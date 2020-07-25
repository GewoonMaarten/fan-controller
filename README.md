# PWM Fan Controller
Arduino fan controller with schematic and pcb. The goal of the project is to create a fan controller that uses a potentiometer as means of controller and a screen as visual output to controller a fan.
In my case I use it to control the fan on my 3D printer, the Cetus3D MKIII.
![3D mockup of the PCB](https://github.com/GewoonMaarten/fan-controller/blob/master/schematic/fan_controller.png)
The PCB was specificly designed for the Cetus3D 3D printer.

# Libraries
- [Adafruit_SH1106](https://github.com/wonho-maker/Adafruit_SH1106). I use the SH1106 as screen, however you can easily change the code to use any other OLED screen.
- [Adafruit-GFX-Library](https://github.com/adafruit/Adafruit-GFX-Library). You can also get this from the Arduino library manager.

# Acknowledgements
- Thanks to [wonho-maker](https://github.com/wonho-maker) for the SH1106 library.
- Thanks to [Adafruit](https://www.adafruit.com/) for creating the GFX library.
