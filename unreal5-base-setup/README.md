![](../images/line3.png)

### Setting Up Project

[home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) • [next](../ndisplay5-config/README.md#user-content-ndisplay-config)</sub>

![](../images/line3.png)

How to create an Unreal project from scratch in Unreal 5.0.X for an in-camera virual production using LSU's equipment in their XR lab in room 1001 at the DMC.

<br>

---


##### `Step 1.`\|`BTS`|:small_blue_diamond:

Run the **Epic Games Launcher** and run the latest version of Unreal. Selet the **Film / Video & Live Events** project category.  Press the <kbd>Next</kbd> button. Select a **Blank** template. Select a directory to save the project to and give the project a name. I named mine `LSUBaseTemplate`.  Select a `Blank` **project**. I selected no **Starter Content** and we will use **Lumen** instead of **Ray Tracing** as no special hardware is required. Press the <kbd>Create</kbd> button. 

![start game launger and create blank film template](images/SelectNewProject.png)

![](../images/line2.png)

##### `Step 2.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: 

We need to download two external plugins. **Opti Track** for the **Live Link** support in **Motive** that handles camera tracking. For focus we are using **LOLED Indie Mark** encoders which require a server to be installed as well as a plugin for Unreal **Lonet 2 - Live Link**.

![select config and name project](images/twoExternalPlugins.png)

![](../images/line2.png)

##### `Step 3.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Place them in the project folder under a new directory called `Plugins`.

![select config and name project](images/externalPlugins.png)


![](../images/line2.png)

##### `Step 4.`\|`BTS`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Open up **Edit | Plugins** and in the **Virtual Reality** section turn off **SteamVR**, **Oculus** and the three **OpenXR** plugins.  

Make sure you have **nDisplay**, **Level Snapshots**, **Live Link**, **Live Link Over nDisplay**, **Multi-User Editing**, **Virtual Production Utilities**, **Media Framework Utilities**, **Blackmagic Media Player**. **Camera Calibration**, **Color Correct Regions**, **ICVFX**, **Level Snapshots**, **Live Link XR**, **LiveLinkCamera**, **LONET2 Plugin**, **OpenColorIO**, **OSC**, **Remote Control API**, **Remote Control Web Interface**, **Switchboard**, **Timed Data Monitor**, **OptiTrack - Live Link** and **OptiTrack - Streaming Client** plugins ALL activated.

You will need to restart the engine for this to take place.

![disable vr and open xr plugins](images/undoPlugins.png)

![](../images/line2.png)

##### `Step 5.`\|`BTS`| :small_orange_diamond:

Make sure **SwitchBoardListener is running**.  You can find it in **D:\Program Files\Epic Games\UE4_5.0\Engine\Binaries\Win64\SwitchboardListener.exe**.  Creata a shortcut for the desktop.  Run it.


![create shortcut to switchboard listener and run](images/createDepotP4.png)

![](../images/line2.png)

##### `Step 6.`\|`BTS`| :small_orange_diamond: :small_blue_diamond:

Double click and run the **SwitchboardListener** shortcut. Now you know if it working by making sure the terminal does not display any errors.  This looks good.

![switchboard running](images/switchBoardRunning.PNG)

![](../images/line2.png)

##### `Step 7.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

OK, we need to quit Unreal and set up a **Perforce Depot** (Project).  Either add to an existing Depot or create a new one in the **Admin** interface.  Use a normal **Local** depot. I called mine `Templates` with a project folder called `LSUBaseTemplate`. 

![new Templates depot](images/shortCut.png)


![](../images/line2.png)

##### `Step 8.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now we need to add a `.p4ignore` file.  You can download it here [.p4ignore](../files/.p4ignore). This allows us to indicate folders and files that will not be included in the repo as they are generated sepearately at run-time on each machine.

![add .p4ignore](images/p4Ignore.png)

![](../images/line2.png)

##### `Step 9.`\|`BTS`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now we need to add this new depot to a new or existing workspace. Right lick on the **Workspaces** in **P4V**. Right click on the workspace and select **Edit Workspace 'name of workspace'**. Then a window pops up and select **Include Tree**. Then select <kbd>Get Latest</kbd> button.

![add depot to workspace](images/SetDepotToWorkspace.png)

![](../images/line2.png)

##### `Step 10.`\|`BTS`| :large_blue_diamond:

Select `.p4ignore` and press **Add** to add the file to the repository.  Select the **Pending** tab and submit the **Changelist**. Enter a message and submit the changelist.

![create new changelist](images/newChangelist.png)

![](../images/line2.png)

##### `Step 11.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: 

Click on the **Templates** folder and select `Reconcile Offline Work...`.  Then **Submit** the changelist with a comment.

![include all key folders and add and submit](images/addKeyFolders.png)

![](../images/line2.png)


##### `Step 12.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Now launch the game from **P4V** by double clicking an launching Unreal from the interface and not from the explorer or through Epics tools.

![launch game from P4V](images/runGameFromP4V.png)

![](../images/line2.png)

##### `Step 13.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

If all works well the source control will default to being connected.  Now if not just click on the arrow next to the <kbd>Source Control</kbd> button at the bottom right of the editor. Select **Perforce** and enter the **username** and **Workspace**. Press the <kbd>Accept Settings</kbd> button.

![set up source control for UE5](images/SetUpSourceControl.png)

![](../images/line2.png)

##### `Step 14.`\|`BTS`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Now you will create two folders `Stage` and `Scenes`.  The stage folder will have all the elements we need for our XR stage.  The scenes folder will contain all the scenes we are going to use in this project.  Go back to the top **Content** folder and drag **Main** into the **Scenes** folder.  You will get a warning about moving this level (but since we have done nothing to it it is OK to ignore), press the <kbd>Yes</kbd> button.

![mnove the main scene to Scenes folder](images/moveMainScene.png)

![](../images/line2.png)

##### `Step 15.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: 

Now when you go to save, if you have not checked out the file you will be prompted to 
**Check out Selected**. NEVER select **Make Writable**.  This should never be used.  The only reason a file can't be checked out is if someone else is using it.  Just ask that person to check it back in so you can access it. In this case select **Check Out Selected** (any time you try and save an existing non-checked out asset).

![check out or save locally](images/checkoutSelected.png)

##### `Step 16.`\|`BTS`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

Right-click on the **Content** folder and select **Fix Up Redirectors in Folder**.

![alt_text](images/fixRedirects.png)

![](../images/line2.png)

##### `Step 17.`\|`BTS`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Now we want to the source control to check out files as they are being edited.  So this way you don't have surprises after an hour or so working on a level that it is locked and can't be saved.

Go to **Edit | Project Settings** and search for `source control`.  Turn **Automatically Checkout on Asset Modification** to `true`.

![alt_text](images/autoCheckOut.png)



___


![](../images/line.png)

![](images/nextNDisplay.png)

![](../images/line.png)

| [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) | [next](../ndisplay5-config/README.md#user-content-ndisplay-config)|
|---|---|
