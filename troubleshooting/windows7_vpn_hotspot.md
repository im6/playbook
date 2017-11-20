### Sharing VPN network with local wifi in windows7, win7下创建WiFi热点共享VPN网络

This article is mainly focused on how to share the vpn network access through wifi in windows.
本文主要用于将笔记本用作热点，发出WiFi，共享VPN网络权限。
## Requirement:
1. PC with win7 and LAN (RJ-45) port; 带有网口的电脑一台；
2. a wired network; 有线网络；
3. a vpn software with valid access, ie. Cisco, expressVpn； VPN软件

[reference: csdn(lovesqcc) ](http://blog.csdn.net/lovesqcc/article/details/38946285)

## Step
1. In service, switch the service - windows firewall - from automatic to manual
2. Open command console **AS ADMIN**
  * 设置wifi： netsh wlan set hostednetwork mode=allow ssid=mywifi key=12345678 
  * 禁用wifi： netsh wlan set hostednetwork mode=disallow 
  * 开启WiFi： netsh wlan start hostednetwork 
  * 关闭wifi： netsh wlan stop hostednetwork 
  * 当创建成功后，你在网络适配器的界面应该看到一个新的Microsoft Virtual WiFi miniport adapter
3. test: if you could connect to new wifi with password 12345678
4. test: if you could share existing network to the new wifi
5. start and run VPN software
6. share VPN network with new wifi
7. now you should be able to use virtual wifi to do anything you want.


