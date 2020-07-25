#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SH1106.h>

#include "images.h"

#define pwm_fan_pin 3
#define potentiometer_pin A0
#define potentiometer_steps 20

Adafruit_SH1106 display(-1);

void setup()
{
  pinMode(pwm_fan_pin, OUTPUT);
  display.begin(SH1106_SWITCHCAPVCC, 0x3C);
  
  display.display();
  delay(2000);
  display.clearDisplay();
  display.setRotation(2);
  display.setTextSize(1);
  display.setTextColor(WHITE);
}

void loop()
{
  const unsigned int temp = analogRead(potentiometer_pin);
  const unsigned int potentiometer_step = map(temp, 0, 1000, 0, potentiometer_steps);
  analogWrite(pwm_fan_pin, (255 / potentiometer_steps) * potentiometer_step);

  display_info(pwm_fan_duty_cycle * 5);
}

void display_info(const unsigned int duty_cycle_percentage)
{
  display.clearDisplay();

  display.drawBitmap(0, 16,  fan_icon_bmp, fan_icon_width, fan_icon_height, WHITE);

  display.setCursor(35, 22);
  display.println("Fan Controller");
  
  char buf[12];
  snprintf(buf, sizeof(buf), "%s%d%s", "Speed: ", duty_cycle_percentage, "%");
  display.setCursor(35, 32);
  display.println(buf);

  display.display();
}
