<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Motion Capture & Camera Tracking

<sub>[previous](../) • [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

This guide walks you through setting up OptiTrack Motive for camera tracking in Unreal in LSU's XR Studio.

<br>

---


##### `Step 1.`\|`BTS`|:small_blue_diamond:

Turn on the power strip for the motion capture cameras at the end of the "brain bar".

![image](https://user-images.githubusercontent.com/1238349/159527518-71f08c07-f31b-4a25-ab9c-7991d871c9ca.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: 

Attach the OptiTrack Active Puck with IMU to the physical camera and turn it on by pressing the button on top for no longer than 1 second. A single green light will start flickering to indicate it's receiving sync data.

![image](https://user-images.githubusercontent.com/1238349/159523706-e77969f4-0aae-4b42-b2d7-902373e5f7dd.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Open up Motive and go to the **Create Layout**.

![image](https://user-images.githubusercontent.com/1238349/159526528-f3f78b22-327d-4b7d-b4aa-793554fd6e94.png)
<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Drag a bounding box around the 8 markers of the active tracker. If all 8 markers aren't seen try movnig the active puck around in the physical space until they are. Then give the rigid body a name like "RED_Camera" and click **Create**.

![image](https://user-images.githubusercontent.com/1238349/159531200-96813136-3e98-4d1e-ba95-7c6fa4d2599d.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`BTS`| :small_orange_diamond:

The rigid body should turn orange to indicate the IMU is being tracked. If not, make sure channel and IMU ID are set. We are most often using the active puck with channel 20 and ID 1.

![image](https://user-images.githubusercontent.com/1238349/159531682-854b526f-acc6-497f-84da-8053750ba437.png)

![image](https://user-images.githubusercontent.com/1238349/159532224-0ac8a125-0b65-4b8f-9124-5793de9c4570.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`BTS`| :small_orange_diamond: :small_blue_diamond:

Switch to the capture layout to begin streaming data to Unreal. 

![image](https://user-images.githubusercontent.com/1238349/159532480-72d8ab2c-5d4e-4332-b902-d3293a709dbc.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

1) Go to View > Data Streaming Pane. 2) You may need to show advanced options by clicking the ellipses. 3) Enable Broadcast Frame Data. 4) Choose the local interface to stream from. 5) Make sure Rigid Bodies is turned on. You should now be able ingest the live link data from Unreal.

![image](https://user-images.githubusercontent.com/1238349/159533974-038591c7-a684-443e-9ef7-e13113205b4f.png)

___

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../)| [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) | [next](../)|
|---|---|---|
