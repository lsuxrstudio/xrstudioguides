![](../images/line3.png)

### DaVinci Project Server Setup

<sub>[previous](../) • [home](../README.md) • [next](../)</sub>

![](../images/line3.png)

The following goes over configuring DaVinci Project Server.

<br>

---


##### `Step 1.`\|`BTS`|:small_blue_diamond:

Download and install DaVinci Project Server from Blackmagic Design website. 

![](../images/line2.png)

##### `Step 2.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: 

Run the following command in PowerShell to open port 5432 so computers can connect.

`New-NetFirewallRule -DisplayName "AllowPostreSQL" -Direction Inbound -Protocol TCP –LocalPort 5432 -Action Allow`

![](../images/line2.png)

##### `Step 3.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Add the following lines to your pb_hba.conf file under C:\Program Files\PostreSQL\[version]\data. This will allow machines in LSU's various subnets (inluding VPN) to connect.

```
host	all	all	130.39.0.0/16	md5
host	all	all	76.165.224.0/19	md5
host	all	all	10.0.28.0/24	md5
host	all	all	10.0.128.0/18	md5
host	all	all	10.0.192.0/19	md5
host	all	all	10.0.193.0/24	md5
host	all	all	167.96.0.0/16	md5
host	all	all	10.20.0.0/15	md5
host	all	all	10.14.0.0/16	md5
```

![](../images/line2.png)

##### `Step 4.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Restart the PostgreSQL service by going to Run > services.msc. Then right clicking on PostgreSQL > restart.

![](../images/line2.png)

##### `Step 5.`\|`BTS`| :small_orange_diamond:

Open DaVinci Project Server. Choose your interface. Enable Network Connection. Enable Project Library.

![](../images/line2.png)

___


![](../images/line.png)

CREATE BANNER WITH https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE

![](../images/line.png)

| [previous](../)| [home](../README.md) | [next](../)|
|---|---|---|

