# EAGLET-flight-controller

## Project FileSystem
__
> workspace
>> main_blackpill
>>> Core
>>> Debug
>>> Drivers
>>> Filters
>>> GCS_Telemetry
>>> Motor_Control
>>> Rc_Telemetry
>>> Release
>>> Sensors
>>> Example Codes
>>>> IMU_SPI
>>>> Ibus
>>>> GCS_Telemetry
>>>> IMU_I2c
> references
>>g ithub resources
__

##Project Development Docs

### Init 
Cubemx or CubeIDE could be used to generate init files. 
CubeIDE was used. Make sure to select 'c/h scripts per peripheral' from project_manager.
Clock configration was done by maximizing the frequency of the developmnet card

### Code writing
CubeIDE was also used for code writing. Make sure to config build pathes from Project-->preferences-->c/c++ buil general-->paths and symbols. 

### Debugging
Compiler and debuuger inside of CubeIDE were used in this project. CubePRogrammer and StUtility are also options for flashing or debugging.

*image for debugger wiring*

## Project module i/o structure

#### main(planner)
-from : __filters{uint16_t data[3]}, Rctelemetry{uint8_t buf} ,gcstelemetry{uint8_t buf}, sensors{uint16_t data[3]}__ - 

#### filters
-from : __main__{uint16_t data[3]}
to : __main__ {uint16_t data[3]}-
#### motorcontrol
-from : __main__ {uint16_t data[3]}
to : __HAL__ {uint16_t PWM[4]-
#### sensors
-from : __HAL__
to : __main__ {uint16_t data[3]}-
#### Rctelemetry
-from : __HAL__ {ibus 32 byte}
to : __main__ {uint16_t data[3]}-
#### gcstelemetry
-from : __main__ {uint8_t buf}
to : __main__ {uint8_t buf}-

