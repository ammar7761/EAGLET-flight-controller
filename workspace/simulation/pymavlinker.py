from pymavlink import mavutil
import serial

class simulasyon():


    
    def __init__(self) -> None:
        #class member atandığında ana bağlantılar sağlanır
        self.sitl = mavutil.mavlink_connection('udp:localhost:14550')
        self.vehicle = serial.Serial('/dev/ttyUSB1', 57600, timeout=0.050)
        self.init_pear2pear()
    def readD(self):
        self.sitl.recvmatch()
    def init_pear2pear(self) -> None:
        #temel değerler tanıtılır ve bağlantı test edilir
        self.Armed = 0
        self.Takeoff = 0
        self.TelemData = {
            (1, 1000),
            (2, 1000),
            (3, 1000),
            (4, 1000)
            (5, 0),
            (6, 0)
        }

        self.sitl.wait_heartbeat()
        if self.CheckSerial() != True:
            print("waiting for connection")
        return True

        
    def set_servo_pwm(self):
        #motorlara pwm gönderilir
        while self.Armed == 1 and self.Takeoff ==1:
            for index in range(0,3):

                self.sitl.mav.command_long_send(
                self.sitl.target_system, self.sitl.target_component,
                mavutil.mavlink.MAV_CMD_DO_SET_SERVO,
                0,                       # first transmission of this command
                index,                   # servo instance, offset by 8 MAIN outputs
                self.TelemData[index+1], # PWM pulse-width
                0,0,0,0,0                # unused parameters
                )
        return f"{list(self.TelemData.values)}"
    
    def CheckSerial(self):
        #
        established = False
        while established != 1:
            self.vehicle.write("HI".encode())
            response = self.vehicle.readline()
            if response.decode("utf-8") == "OK":
                established = True
            return established
        
    def Update_Instruction(self, pwm1, pwm2, pwm3, pwm4, signal1, signal2):

        self.TelemData[1] = pwm1
        self.TelemData[2] = pwm2
        self.TelemData[3] = pwm3
        self.TelemData[4] = pwm4
        self.TelemData[5] = signal1
        self.TelemData[6] = signal2
        self.Armed = self.TelemData[5]
        self.Takeoff = self.TelemData[6]



    def get_channels(self):
        self.channels_txt = self.vehicle.readline()
        if self.channels_txt.decode("utf_8") == "SET_SERVO":
            for channel in range(5):
                self.channels_txt[channel] = float(self.vehicle.readline())
            self.Update_Instruction(
                                    self.channels_txt[0],
                                self.channels_txt[1],
                            self.channels_txt[2],
                        self.channels_txt[3],
                    self.channels_txt[4],
                self.channels_txt[5]
            )


        
