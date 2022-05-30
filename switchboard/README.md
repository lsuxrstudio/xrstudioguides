# Switchboard Setup

<sub>[previous](/README.md) • [home](/README.md) • [next](/README.md)</sub>

---

The following goes over how to create a new switchboard configuration.

---

## Pre-reqs

1. Before proceeding make sure you’ve setup your Perfoce workspaces. See [Setting up Perforce on Operator and Render Nodes](https://www.notion.so/Setting-up-Perforce-on-Operator-and-Render-Nodes-43e28feb9d064b75bed4fbd697756860) 
2. Also, it’s helpful to Migrate your project into the LSUBaseTemplate making sure to have renamed your project file and project folder something unique. See: [LSU Base Template Migration](https://www.notion.so/LSU-Base-Template-Migration-cc7f94d854774d2ab692365d7ef6c75f) 
3. It’s useful to connect the project to source control from within the editor first. This way switchboard can auto-populate some of the fields below.  
4. Make sure to close Unreal if you're going to launch Switchboard from outside the editor. 

## Switchboard

1. Open **Switchboard Listener** using the desktop shortcut ("D:\Program Files\UE_5.0\Engine\Binaries\Win64\SwitchboardListener.exe”)
2. Open **Switchboard** using the desktop shortcut ("D:\Program Files\UE_5.0\Engine\Plugins\VirtualProduction\Switchboard\Source\Switchboard\switchboard.bat”)
3. Go to Configs > **New Config**
    
    ![New Switchboard Config](images/switchboardNewConfig.png)
    
4. Click **Browse** next to **uProject** and choose the project you want to use.
5. Click **Detect** and as long as your Unreal File has been already connected to Perforce it should bring in your P4 Project Path and Workspace Name. 

    ![Add New Switchboard Config](images/addNewSwitchboardConfig.png)
        
6. If it didn’t, you can check what they are by opening Perforce and copy pasting them in.
7. Click Add Device > **nDisplay**

    ![Add nDisplay](images/addNDisplay.png)
        
8. When asked for an nDisplay config file click **populate** and it should grab the one from inside your project. ie: D:\Users\virtualproduction\Perforce\art4240_DESN-ART302-01_3815\2022-Summer-ART-4240-01\cfair_shatter_XR\cfair_shatter_XR.uproject. 
9. Click Add Device > **Unreal** 
    
    ![Add Unreal Device](images/addDeviceUnreal.png)
    
10. Use **127.0.0.1** for the IP address 

    ![Unreal IP Address](images/UnrealIPAddress.png)
        
11. Go to Settings and change the **nDisplay Node_0 Workspace Name** to the workspace on that computer (i.e. 22suart4240-render).

    ![nDisplay Workspace Name](images/nDisplayWorkspaceName.png)
        
12. Choose your **Level**
    
    ![Choose Level](images/pickLevel.png)
    
13. Name Your Multi-User Session something like **MU_Session_ProjectName_01** and press Enter.
    
    ![Multi User Session Name](images/multiUserSessionName.png)
    
14. Click 1) Refresh Change Lists; 2) Connect to Listener on nDisplay; 3) Connect to Listener on Unreal Device; 4) Sync all device; 5) Build all devices. 6) Connect All Devices; 7) Start All devices.

15. After about a minute the Unreal editor should open up on the operator and an Unreal build should  open on the render node(s).

## Troubleshooting

- Sometimes there are multiuser sessions running that you can’t delete. One way to do this is to run the following
    
    ```bash
    cd "D:\Program Files\UE_5.0\Engine\Binaries\Win64\”
    .\UnrealMultiUserServer.exe -ConcertClean
    ```
    
- If you get an error in Switchboard that says “Could not start program p4” when switching workspaces try logging out and in again. I suspect p4 variables need to be reloaded.

- Sometimes we have Unreal "ghost sessions" you can use Windows Tasks Manager to look for any instances of Unreal running in the background and close them down. 

## Resources

[In-Camera VFX Quick Start](https://docs.unrealengine.com/5.0/en-US/in-camera-vfx-quick-start-for-unreal-engine/)

[In-Camera VFX Production Test](https://docs.unrealengine.com/5.0/en-US/in-camera-vfx-production-test-sample-project-for-unreal-engine/)

---

| [previous](/README.md)| [home](/README.md) | [next](/README.md)|
|---|---|---|s