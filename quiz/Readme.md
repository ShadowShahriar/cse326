## Lab Mid

📌 [**Question Paper from Ifat Metu**](../materials/quiz.jpg)

### 1. What is a microprocessor?

A microprocessor is an integrated circuit (IC) that acts as the CPU of a computer and performs arithmetic, logic, and control operations.

> A microprocessor mainly contains the CPU only.

### 2. What is a microcontroller?

A microcontroller is a single IC that contains a CPU, memory (RAM/ROM), and input/output peripherals.

> A microcontroller is a complete small computer on a chip.

### 3. Write two differences between a microprocessor and a microcontroller.

1. Microprocessor requires external memory and peripherals, while a microcontroller has them built-in.
2. Microprocessor is used in computers; microcontroller is used in embedded systems.

### 4. Why is a microcontroller called a single-chip computer?

Because it contains the CPU, memory, and input/output interfaces on a single chip.

> All major components are integrated into one IC.

### 5. What is the function of the ALU?

The Arithmetic Logic Unit (ALU) performs arithmetic operations (addition, subtraction) and logical operations (AND, OR, NOT).

> ALU = Arithmetic + Logic operations.

### 6. What is the function of registers in a microprocessor?

Registers store temporary data and instructions for fast processing by the CPU.

> Registers are the fastest storage locations in a processor.

### 7. What is the difference between RAM and ROM?

- RAM is temporary and volatile memory.
- ROM is permanent and non-volatile memory.

> RAM loses data when power is off; ROM keeps data.

### 8. What is the function of the address bus?

The address bus carries the address of the memory location or device to be accessed.

> Address bus specifies where data is located.

### 9. What is the function of the data bus?

The data bus transfers data between the CPU, memory, and peripherals.

> Data bus carries the actual data.

### 10. What is the purpose of input/output ports?

Input/output ports allow communication between the microcontroller and external devices.

> I/O ports connect the controller to the outside world.

### 11. What is meant by interfacing in a microprocessor or microcontroller system?

Interfacing is the process of connecting external devices such as sensors, displays, and motors to a processor.

> Interfacing enables communication with external hardware.

### 12. What is an interrupt?

An interrupt is a signal that temporarily stops the current task and requests immediate attention from the CPU.

> Interrupts help the CPU respond quickly to events.

### 13. Why is a clock signal needed in a microprocessor system?

A clock signal synchronizes and controls the timing of all processor operations.

> Clock signal determines the processor's speed.

### 14. What is the function of GPIO pins in a microcontroller?

GPIO (General Purpose Input Output) pins are used to read inputs and control outputs.

> GPIO pins can act as either inputs or outputs.

### 15. What is the difference between an input pin and an output pin?

- Input pin receives signals.
- Output pin sends signals.

> Input = receive, Output = send.

### 16. What happens when a microcontroller pin is set HIGH?

The pin outputs a high voltage level (usually 5V or 3.3V).

> HIGH generally represents logic 1.

### 17. What happens when a microcontroller pin is set LOW?

The pin outputs 0V or ground voltage.

> LOW generally represents logic 0.

### 18. What is a sensor?

A sensor is a device that detects physical conditions and converts them into electrical signals.

> Sensors collect information from the environment.

### 19. What is an actuator?

An actuator is a device that converts electrical signals into physical movement or action.

> Actuators perform actions based on control signals.

### 20. What is the purpose of using delay in microcontroller programming?

Delay is used to pause program execution for a specified time.

> Delays help control timing in projects.

### 21. What is the main purpose of a traffic light control system?

To regulate vehicle and pedestrian traffic safely and efficiently.

> Traffic lights improve road safety.

### 22. If one LED does not glow in the traffic light project, what possible problems may occur?

Faulty LED, incorrect wiring, damaged resistor, or programming error.

> Check hardware and code during troubleshooting.

### 23. What is the function of an ultrasonic sensor?

It measures the distance to an object using ultrasonic sound waves.

> Ultrasonic sensors are distance-measuring devices.

### 24. What are the Trigger and Echo pins of an ultrasonic sensor used for?

- `Trigger` pin sends the ultrasonic pulse.
- `Echo` pin receives the reflected pulse.

> Trigger = send, Echo = receive.

### 25. Which formula is used to calculate distance using an ultrasonic sensor?

```
d = (Time * Speed of Sound) / 2
speed of sound ≈ 343 m/s
```

> Divide by 2 because the sound travels to the object and back.

### 26. Why is the time divided by 2 in ultrasonic distance calculation?

Because the measured time includes both forward and return travel of the sound wave.

> Total time = go + return.

### 27. What type of wave is used by an ultrasonic sensor?

Frequencies above 20 kHz. Ultrasonic waves are beyond human hearing.

### 28. Why is timing accuracy important in an ultrasonic sensor project?

Small timing errors can cause incorrect distance measurements.

> Accurate timing gives accurate distance.

### 29. If the ultrasonic sensor gives wrong distance values, what may be the reasons?

Incorrect wiring, timing errors, obstacles, noise, or sensor malfunction.

> Check connections and code first.

### 30. What is the main purpose of a smart door lock system?

To provide secure access control to authorized users.

> Smart locks improve security and convenience.

### 31. Which input devices can be used in a smart door lock system?

Keypad, RFID reader, fingerprint sensor, or password input device.

> Input devices verify the user's identity.

### 32. Which output or actuator device is commonly used to open and close the door lock?

Servo motor or solenoid lock.

> Actuators physically lock or unlock the door.

### 33. What happens when the correct password is entered in a smart door lock system?

The controller unlocks the door and grants access.

> Correct password activates the unlocking mechanism.

### 34. What happens when the wrong password is entered in a smart door lock system?

Access is denied, and an alarm or warning may be triggered.

> Incorrect passwords keep the door locked.

### 35. Compare the input and output devices used in traffic light, ultrasonic sensor, and smart door lock projects.

| Project           | Input Device                     | Output Device                      |
| ----------------- | -------------------------------- | ---------------------------------- |
| Traffic Light     | Push button (optional)           | Red, Yellow, Green LEDs            |
| Ultrasonic Sensor | Ultrasonic sensor                | LCD, buzzer, or LED                |
| Smart Door Lock   | Keypad, RFID, Fingerprint sensor | Servo motor, solenoid lock, buzzer |
