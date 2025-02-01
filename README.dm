#Fire Alert System using ESP32 and Blynk

##**Project Description**
Fire Alert System with ESP32 and Blynk is a real-time fire detection project using an ESP32 microcontroller, flame sensor, and a buzzer. The system detects fire through the flame sensor and activates an alarm (buzzer) when a flame is detected. Additionally, the system sends real-time notifications to the user through the Blynk app. The project is designed for IoT applications and serves as an early warning system for fire hazards

##**Project Structure**
- **`src/`**: Contains the Arduino source code (`fire_alert_system.ino`).
- **`README.md`**: This document with project details, setup instructions, and code explanation.

##**Hardware Requirements**
- **ESP32 Development Board**.
- **Flame Sensor** connected to **GPIO 13**.
- **Buzzer** connected to **GPIO 15**.
- **Jumper wires** for connections.

##**Software Requirements**
- **Arduino IDE** with ESP32 board setup.
- **Blynk App** on your smartphone.
- **Blynk Library** for Arduino.

##**WiFi Credentials**
- **SSID**: Replace with your WiFi network name.
- **Password**: Replace with your WiFi password.

## **Blynk Setup**
Before using the system, you need to create an event in the Blynk app. Here’s how:
1. Open the **Blynk app** and create a new project for your **ESP32 Flame Detector**.
2. Add a **Notification Widget** to your project (this widget will be used to send notifications to your phone).
3. **Create an Event** in the Blynk app with a name like `"fire_alert"` to be used in the code for logging and triggering notifications.
4. Get your **BLYNK_AUTH_TOKEN** and update it in the code.
5. **BLYNK_TEMPLATE_ID** and **BLYNK_TEMPLATE_NAME** should match the identifiers you set in your Blynk app.

## **Instructions to Run the Code**
**1. Clone the repository or download the source code from the Github.**
**2. Install the necessary libraries**:
- Open the **Arduino IDE**.
- Go to **Sketch > Include Library > Manage Libraries**.
- Search for and install the **Blynk** library.
**3. Update the WiFi and Blynk credentials**:
In the code (`fire_alert_system.ino`), replace the placeholders:
- Replace `"Your wifi name"` with your WiFi network name.
- Replace `"Your wifi password"` with your WiFi password.
- Replace `BLYNK_AUTH_TOKEN` with your unique **Blynk Auth Token**.
**4. Create the Blynk event**:
In the **Blynk app**, create an event:
- Name the event `"fire_alert"`.
- Add a **Notification Widget** to your project to receive the notifications.
**5. Upload the code**:
Upload the updated code to your **ESP32** using the **Arduino IDE**.
**6. Monitor the output using the Serial Monitor**:
- After uploading, open the **Serial Monitor** in the Arduino IDE.
- When the flame sensor detects a flame (HIGH signal), the buzzer will sound, and you’ll receive a notification from **Blynk**.
**7. Expected Results**:
- **Fire detected**: "Fire detected! Activating alarm..." , the buzzer will sound and you'll receive a notification from **Blynk*.
- **No fire detected**: "No fire detected." and the buzzer stops.

