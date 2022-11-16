# A simple BACnet-IP in and MQTT out demo



## Topology

![](/assets/1.png)

## Hardware

You will need a PC running the YABE BACnet room control simulator, and a WisGate Connect gateway. Make sure your PC and WisGate Connect are in the same LAN, and both of them have the ethernet cable plugged in.

## Software

You need to set up both the PC and WisGate Connect.

#### PC set-up

For the software side, you need to install YABE on your PC first, please check this link: [Yet Another Bacnet Explorer download | SourceForge.net](https://sourceforge.net/projects/yetanotherbacnetexplorer/)).After the installation is finished, navigate to the install folder of YABE, you should be able to see a folder called AddOn, and there is an application called BACnet.Room.Simulator in the folder. Double-click on this application to start the simulator.

![](/assets/2.png)

The simulator has an interface, and it looks like this:

![](/assets/3.png)



#### WisGate Connect set-up

1. Clone this repo
2. Enter the directory and run `./start.sh` to start the demo.
   
   You should be able to see the URLs after deployment is finished:
   
   ![](/assets/4.png)
3. Browse to Node-RED's URL to visit the web interface 
4. Browse to Grafana's web interface to configure the data source and create a new panel
