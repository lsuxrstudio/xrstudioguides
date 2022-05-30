![](../images/line3.png)

### Setting up Perforce on Operator and Render Nodes

<sub>[previous](../) • [home](../README.md) • [next](../)</sub>

![](../images/line3.png)

This tutorial helps us get started for new classes/groups using Perforce for a render node and operator in LSU XR Studio.

<br>

---

#### Pre-reqs

1. Download the Perforce Helix Visual Client P4V from here: [https://www.perforce.com/downloads/helix-visual-client-p4v](https://www.perforce.com/downloads/helix-visual-client-p4v). 
2. Download the Perforce Helix Command Line from here: [https://www.perforce.com/downloads/helix-command-line-client-p4](https://www.perforce.com/downloads/helix-command-line-client-p4)

#### P4 Admin

1. Create a New User that can be shared on the operator and render nodes such as **22suart4240**
2. Make a new Depot for this group or class named something like **2022-Summer-ART-4240**
3. Give this user permissions for **Templates**

#### P4V

1. Open P4V and connect to [helixcore.cct.lsu.edu:1818](http://helixcore.cct.lsu.edu:1818) as the user that was made in P4 Admin
    
    ![p4v login](images/p4vLogin.png)
    
2. Go to the Workspaces tab and click **New Workspace** 
    
    ![New Workspace](images/newWorkspace.png)
    
3. For Workspace Root choose a directory that all computers can have in common, for instance: **D:\Perforce\22suart4240**. 
4. For Workspace Name choose something unique, for instance: **22suart4240-operator.** 
5. Rt. Click > **Clear** any depots you don’t want such as OldProjects. 
    
    ![Choose Depots](images/chooseDepots.png)
    
6. Press Ok
7. Select your Workspace Folder and Press **Get Latest**. This will download all your from your depot.  ****
    
    ![Get Latest](images/getLatest.png)
    
8. On the **Render Node** repeat the same steps as above to create a new workspace called something like **22suart4240-render**. Make sure the Workspace root is the same as the operator above. Also, click Get Latest.

#### P4 Command Line

1. To make sure the command line version of P4 is in sync with p4v open a command prompt and type `p4 info`  
    
    ![1st P4 Info](images/p4info1st.png)
    
2. P4 CLI Client Name and User Name should be set to match p4v.
3. Type `p4 set P4USER=art4240`
4. Type `p4 set P4CLIENT=22suart4240-operator`
5. Now check `p4 info` again. 
    
    ![2nd P4 Info](images/p4info2nd.png)
    
6. We’re good to go. Our Client name, host, and root all look correct now.
7. Optionally, you could also create a files called `render.p4config` and `operator.p4config` with the following contents and then type `p4 set P4CONFIG=operator.p4config` on the operator machine and  `p4 set P4CONFIG=render.p4config` on the render machine.

    Contents of operator.p4config:
    ```
    P4CLIENT=22suart4240-operator
    P4USER=art4240
    P4PORT=helixcore.cct.lsu.edu:1818
    P4PASSWD=p4$$w0rd!
    ```
    [operator.p4config](operator.p4config)
    
    Contents of render.p4config:
    ```
    P4CLIENT=22suart4240-render
    P4USER=art4240
    P4PORT=helixcore.cct.lsu.edu:1818
    P4PASSWD=p4$$w0rd!
    ```
    [render.p4config](operator.p4config)

#### Resources

* [maubanel/p4v-unreal](https://github.com/maubanel/p4v-unreal)

___

| [previous](../)| [home](../README.md) | [next](../)|
|---|---|---|
