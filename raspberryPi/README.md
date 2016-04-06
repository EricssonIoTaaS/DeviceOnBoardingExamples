# DeviceOnBoardingExamples
Raspberry pi and ESP devices' sample code for onboarding temperature, humidity and motion detector sensors. Python, bash scripting and Ardunio IDE (C/C++) are used.

-------------------------------

# Raspberry Pi Temperature Sensor

- readTempData.sh script is used to collect data from LM75 heat sensor on Raspberry pi. 

- blank.json file is the json format that is being sent through HTTP to the broker, its fields are filled within sendTempDataWithHTTP.sh script.

- send.json file is the json file which is filled with data and actual json file to be sent to the broker and it is created in sendTempDataWithHTTO.sh script.

- sendTempDataWithHTTP.sh script is used to collect temperature data from LM75 sensor using readTempData.sh script and to create data filled version of 
blank.json file which is send.json file. This script also sends the collected temperature data along with date property as json to the broker with HTTP protocol. 
It also prints out the sent data on the screen.

-------------------------------

# Raspberry Pi Motion Sensor

- sendMotionDetectWithMQTT.py is a python script and it is used to collect motion detection data from HC-SR501 PIR motion sensor and publish this data along with date 
property as a json to the broker with MQTT protocol.

- examples directory involves MQTT publish and subscribe examples along with another motion detection example which calculates elapsed time which are also python scripts as well.

Note: Tobe able to run this motion sensor example, Python and MQTT libraries must be installed on Raspberry Pi. These examples were run on Raspbian OS. 
It is considered that these examples are being run on a Raspbian OS in which internet and wifi configurations were already taken care of.

-------------------------------

# Raspberry Pi CoAP Protocol Usage Examples

- coapExample directory involves some server and client examples using CoAP protocol.

Note: To be able to run this CoAP examples, Twister and txThings libraries must be installed on Raspberry Pi.
