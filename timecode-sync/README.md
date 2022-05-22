![](../images/line3.png)

### Timecode & Sync

<sub>[previous](../hdr5-output/README.md#user-content-hdr-output) • [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents)</sub>

![](../images/line3.png)

We are almost ready to go.  The only thing we need to add is timecode and sync. Timecode allows us to record the live link data and sync it back later in post.  Sync is required so that the game engine updates frames at the same time as the camera and monitor. Without it you would have tearing if the game moves the camera in the scene instead of the camera tracker.

<br>

---


##### `Step 1.`\|`BTS`|:small_blue_diamond:

In our case in our **Caputure PC** we have a BlackMagic Decklink 8K card.  Our **RED Komodo** camera goes into the black magic by SDI. Go to the **Stages** folder and press the <kbd>+ Add</kbd> and open up **ALL CLASSES** and select `BlackmagicTimecodeProvider(Balckmagic SDI Input)`. It is VERY importnat that this card is getting genlock sync from our sync generator.

![add black magic timecode blueprint](images/blackMagicTC.png)

![](../images/line2.png)

##### `Step 2.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: 

Call the blueprint `BP_BlackMagic_Timecode`.

![call it BP_BlackMagic_Timecode](images/blackmagicbp.png)

![](../images/line2.png)

##### `Step 3.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

The black magic capture card that receives the camera signal in our capture PC then sends it to the operator machine to feed it timecode.  We can open up **Black Magic Desktop Video Setup** and see that it is inputing 4K30 DCI and outputing 4K30 DCI.  This is consistent with the signal coming from the camera.

![black magic desktop video settings](images/bmVideoSetup.jpg)

![](../images/line2.png)

##### `Step 4.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

We have setup the **BlackMagic Decklink** card so that any of the **SDI** connectors can be inputs or outputs.  It recognizes that we are using channel 1 as an input and channel 2 as an output.

![show input and output setting in black magic deckink card](images/decklinkSettings.jpg)

![](../images/line2.png)

##### `Step 5.`\|`BTS`| :small_orange_diamond:

Now we are using **Assimilate Live-FX** to record and feed timecode to our opertaor machine.  Open up **Live Effects** and select **Settings**.

![select settings button in live effects](images/Settings.jpg)

![](../images/line2.png)

##### `Step 6.`\|`BTS`| :small_orange_diamond: :small_blue_diamond:

Now select **Video IO..**.

![select Video IO..](images/videoIO.jpg)

![](../images/line2.png)

##### `Step 7.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Select the **DeckLink 8K Pro** as the device that we are inputting.  The camera is wired into channel 1.  Turn this **On** and set it as the **Input**. Our second channel is going from this decklink to the **BlackMagic** card in the operator PC that needs this signal to read the timecode.  So we set channel 2 to **On** and set it as **Output**

![set input and output](images/forwardVideo.jpg)

![](../images/line2.png)

##### `Step 8.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 9.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 10.`\|`BTS`| :large_blue_diamond:

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 11.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: 

![alt_text](images/.png)

![](../images/line2.png)


##### `Step 12.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 13.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 14.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 15.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: 

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 16.`\|`BTS`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 17.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 18.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 19.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 20.`\|`BTS`| :large_blue_diamond: :large_blue_diamond:

![alt_text](images/.png)

![](../images/line2.png)

##### `Step 21.`\|`BTS`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

___


![](../images/line.png)

![that is all end of walk through](images/thatisall.png)

![](../images/line.png)

| [previous](../hdr5-output/README.md#user-content-hdr-output)| [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) | 
|---|---|
