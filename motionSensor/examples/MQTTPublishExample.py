# -*- coding: utf-8 -*-
import paho.mqtt.client as mqtt

mqttc = mqtt.Client("python_pub")
mqttc.connect("10.44.41.12", 1883)
mqttc.publish("hello/world/dogukan", "Hello, World, Dogukan!")
mqttc.loop(2) # timeout = 2s
