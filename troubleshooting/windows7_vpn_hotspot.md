# Sharing VPN network with local wifi in windows7

This article is mainly focused on how to share the vpn network access through wifi in windows.  
本文主要用于将笔记本用作热点，发出带有VPN网络权限的WiFi.  
[Reference: csdn(lovesqcc) ](http://blog.csdn.net/lovesqcc/article/details/38946285)

## Requirement:
1. PC with win7 and LAN (RJ-45) port; 带有网口的电脑一台；
2. a wired network; 有线网络；； VPN软件

## Step
1. In service, switch the service - windows firewall - from automatic to manual
  ![](https://github.com/zj1926/toolbox/blob/master/troubleshooting/img/img4.PNG "manual firewall")
2. Open command console **AS ADMIN**
  * 设置wifi： netsh wlan set hostednetwork mode=allow ssid=happywifi key=12345678 
  * 禁用wifi： netsh wlan set hostednetwork mode=disallow 
  * 开启WiFi： netsh wlan start hostednetwork 
  * 关闭wifi： netsh wlan stop hostednetwork 
  * 当创建成功后，你在网络适配器的界面应该看到一个新的Microsoft Virtual WiFi miniport adapter(参考step 7)  
    ![](https://github.com/zj1926/toolbox/blob/master/troubleshooting/img/img1.PNG "start wifi")
3. test: if you could connect to new wifi(ssid: happywifi) with password 12345678
  * sometime DHCP is disabled, that means you need to manually configure the IP and netmask in ip settings, to make sure your mobile device is in the same subnet of the wifi network.
  * command: ipconfig  
    ![](https://github.com/zj1926/toolbox/blob/master/troubleshooting/img/img3.PNG "ipconfig")

4. test: if you could share existing network to the new wifi, if successfull, your device should be in the same network as your wired network.
  * the way to share the wifi is right-clicking the source wifi adapter, and choose the destination adapter(new wireless wifi) as follows.(screenshot is similar to images in step 7)
5. start and run VPN software
6. config firewall so that VPN service is not blocked by it, usually create the exception in the list.
  ![](https://github.com/zj1926/toolbox/blob/master/troubleshooting/img/img5.PNG "firewall setting")
7. share VPN network with new wifi and test. If success, your device should be able to connect the same VPN wifi network as wired one before.
  ![](https://github.com/zj1926/toolbox/blob/master/troubleshooting/img/img2.PNG "share network")
8. Finish.


