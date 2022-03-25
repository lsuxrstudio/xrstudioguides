<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### HDR Output

<sub>[previous](../) • [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

The LED wall wants to receive a linear HDR signal.  Unreal has been built to output **sRGB** for computer monitors for playing games. There are a few extra steps in configuring the project to output in the correct color space. The monitor uses a **PQ** signal. We need to convert the color to **Linear PQ**.  Please note this will look wrong in your monitor viewing the project, but will look correct on the LED panels.

<br>

---


##### `Step 1.`\|`BTS`|:small_blue_diamond:

Make sure the **OCIO** plugin is enabled. Click on **View Options** and turn on **Engine Content** and **Plugin Content**.  Search of OCIO.  Now none of the files will show up in Unreal so you will have to right click on the **OCIO** folder and select **Open in Explorer**.

![set up OCIO color](images/ocioTools.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: 

Copy the `simple.config.ocio` and the `luts` folder.

![copy config and ocio folder](images/simpleConfigOCIO.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Create a new folder inside of **Stages** called `OCIO`.

![create OCIO folder in Stages](images/newOCIOFolder.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Right click on **Stages | OCIO** and select **Open in Explorer** and now paste the config file and folder into this folder.  Again, this will not show up in Unreal so you will have to confirm it in Explorer. Please note, since it doesn't show up in Unreal you need to use **P4V** to commit the files to source control.  This is very important as your nDisplay machine will not OCIO setup if this is not done.

![paste files in OCIO folder](images/copyContent.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`BTS`| :small_orange_diamond:

Click on the **OCIO** folder and right click on the <kbd>Add/Import</kbd> button and select the **Miscellaneous 
| OpenColorIO Configuration** node. Call it `SRGBtoPQ`.  SRGB is the native format that Unreal outputs for games and PQ is an **HDR** format that our **Brompton** processors are set up to receive.

![creat OCIO Asset](images/createOCIOAsset.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`BTS`| :small_orange_diamond: :small_blue_diamond:

Open up the **SRGBtoPQ** file and load the `simple.config.ocio` into the **Configuration File** slote.

![add simple.config.ocio to element](images/addOpenConfig.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Next to **Desired Color Space** press the **+** button next to **Desired Color Space** twice.  In the slot `0` add **Utility | Utility - Linear -sRGB**.  On `1` select **Output | LED Walls - PQ**

![add an sRGB to PQ converter](images/conversion.png)

![sRGB to PQ ocio file](images/finalConversion.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Open the **LSUnDIsplayACong** Blueprint and select the  **OCIO | Configuration Source** selecting the `SRGBtoPQ` item.  Then select the **Source Color Space** as `Utility - Linear - sRGB` and **Destination Color Space** as `Output - LED Walls - PQ`.

![assign ocio to ndisplay config and pick source and destination color](images/assignOCIO.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Repeat the above in the **ICVFX** component in the **LSUnDIsplayACong** Blueprint. Press the <kbd>Compile</kbd> button.

![assign ocio to icvfx component](images/ocioIcvx.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`BTS`| :large_blue_diamond:

Double check that in game these settings carry over into the **LSUDisplayConfig** in the **World Outliner**.

![confirm ocio carry over to component in game](images/confirmColor.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 11.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


##### `Step 12.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 13.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 14.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 15.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 16.`\|`BTS`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 17.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 18.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 19.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 20.`\|`BTS`| :large_blue_diamond: :large_blue_diamond:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 21.`\|`BTS`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../)| [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) | [next](../)|
|---|---|---|
