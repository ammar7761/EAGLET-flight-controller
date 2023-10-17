
#include "imu_adxl345.h"
uint8_t data[6];
uint16_t x,y,z;
float xg,yg,zg;
                                                          //write fonksiyonu modülün uyanması içindir. Her modülün uyanması için gönderilmesi gerekilen adress ve value değeri farklıdır. Buna dokümasyondan ulaşılır
void adxl_write(uint8_t adress, uint8_t value){ 
	uint8_t data[2];
	data[0]=adress|0x40; // adress verisini ayarlıyoruz
	data[1]=value;       // value değerini ayarlıyoruz
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_9, GPIO_PIN_RESET); //CS pinine LOW vererek o modülle iletişime geçeceğimizi belirtiriz.
	HAL_SPI_Transmit(&hspi2, data, 2, 100);                //Veri aktarılır ve modül uyanır.
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_9, GPIO_PIN_SET);   //CS pinine HIGH vererek ilteşimi bitiririz
}

void adxl_write(uint8_t adress, uint8_t value);
void adxl_read(uint8_t adress);
void adxl_init(void);
                                                          //Read fonksiyonu modülden veri okumak içindir. ADXL345 modülü 6 adet veri gönderir. (x1,xx2,y1,y2,z1,z2) Bunlar 8 bit dir.
void adxl_read(uint8_t adress){
	adress|=0x40;    //adress ayarlanıyor
	adress|=0x80;
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_9, GPIO_PIN_RESET);    //CS pinine LOW vererek o modülle iletişime geçeceğimizi belirtiriz.
	HAL_SPI_Transmit(&hspi2, &adress, 1, 100);    //Modüle Adress verisini göndeririz
	HAL_SPI_Receive(&hspi2, data, 6, 100);      //daha önce belirlediğimiz 8 bitlik data değişkenine bunları yazıyoruz...
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_9, GPIO_PIN_SET);    //CS pinine HIGH vererek ilteşimi bitiririz
}
void adxl_init(void)    //init her modülün kendi özellik ve dökümantasyonuna göre yapılmalıdır. Burada ADXL345 için hazırlanmış versiyon gözükmektedir
{
	adxl_write(0x31, 0x01);
	adxl_write(0x2d, 0x00);
	adxl_write(0x2d, 0x08);
}

/*
 * example usage
int main(void){

	adxl_init();
	while (1){
		  adxl_read(0x32);    //veriyi okumaya başlarız.
										  //ÖNEMLİ: biz veriyi 8 bitlik6 parça olarak alıyoruz fakat X,Y,Z değişkenlerini 16 bit olarak atadık. Neden? çünkü SPI 8 bit veri verir. ama buna bir çözüm olarak X,Y,Z verilerini 2 parça olarak gönderiyor. İşte bu yüzden şimdi o parçaları birleştireceğiz...
		  x=(data[1]<<8)|(data[0]);    //Burada IMU verilerini kaydettiğimiz IMU değişkenimizin 2. elemanını X in içine 8 boşluk bırakıp kaydediyoruz sonra da ilk 8 e data nın 1. elemanını yazıyoruz.
		  y=(data[3]<<8)|(data[2]);    //Aynı işlemi Y ve Z için de yapıyoruz
		  z=(data[5]<<8)|(data[4]);    //Aldığımız veriler -128 / + 128 aralığında oldu


		  xg=(float)x*0.0078;    //burada verileri 0.0078 ile çarparak -1 ve 1 arasına düşürüyoruz.
		  yg=(float)y*0.0078;
		  zg=(float)z*0.0078;
	  }
	return 0;
}
*/
