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
  * 运行命令：
启用wifi： netsh wlan set hostednetwork mode=allow ssid=mywifi key=12345678
禁用wifi： netsh wlan set hostednetwork mode=disallow


