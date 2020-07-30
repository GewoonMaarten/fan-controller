#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SH1106.h>

#include "images.h"

#define pwm_fan_pin 3
#define potentiometer_pin A0

#define potentiometer_steps 20
#define readings_size 15

/* Values for smoothing */
int readings[readings_size];
int read_index;
int total;
int average;

int potentiometer_step;

Adafruit_SH1106 display(-1);

void setup()
{
  pinMode(pwm_fan_pin, OUTPUT);

  /* Set the values of the array to 0 */
  memset(readings, 0, readings_size);

  /* Initialize the display */
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
  potentiometer_step = read_potentiometer();
  analogWrite(pwm_fan_pin, (255 / potentiometer_steps) * potentiometer_step);

  display_info(potentiometer_step * 5);
  
  delay(1);
}

/**
 * Read the potentiometer and smooth the output.
 * 
 * @returns the smoothed output as int.
 */
int read_potentiometer()
{
  total -= readings[read_index];
  readings[read_index] = analogRead(potentiometer_pin);
  total += readings[read_index];

  read_index += 1;
  if (read_index >= readings_size) read_index = 0;
 
  average = total / readings_size;
  /* analogRead ranges from 0 to 1024, but it rarly reaches the max value. 
   * In order to get a 100% reading on the display it is changed to 1000.
   */
  average = map(average, 0, 1000, 0, potentiometer_steps);
  average = constrain(average, 0, potentiometer_steps);

  return average;
}

/**
 * Draws the potentiometer value on SH1106 128x64 oled screen.
 * 
 * @param duty_cycle_percentage The number to display on the screen.
 */
void display_info(const int duty_cycle_percentage)
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
