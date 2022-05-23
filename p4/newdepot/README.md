<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### P4 New Depot

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

<sub>[home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents)</sub>

Start-Up Procedure for Operator 1

<br>

---

- [ ] In **P4 Admin** press `File | New | Depot`.`

- [ ] Enter name for new Depot (don't include spaces). The name should be `YEAR-SEMESTER-CLASS-SECTION-MACHINE` for example **2022-Spring-ART4240-03**

- [ ] Select either **local** for no branching/streaming or **stream** for branching/streaming projects. If you don't know what streaming is, then select **local**

- [ ] Press `OK`

- [ ] Assign persmissions to the correct **Group** in **P4 Admin** so that the workspace can access the file. Ideally the **Group** would be called `CLASS-SECTION`.

- [ ] Create a new user that has access to this new depot that is a member of the above group.  Select `File | New User` then enter a new username and you can use the same as the group. Assign an easy to remember password for the entire class. This user should only be use in the lab computers. Under **Groups** click on `Browse` and select the above group.

- [ ] Go to **Permissions** tab and insert line and assign the new group the correct **Folder/File**. Press `Save Edits`.

- [ ] If it is a new group, a new workspace might have to be created. The workspace name should be CLASS-MACHINE for example **ART4240Operator**. Keep the workspace root the same on both **Operator** and **Render Node** machines.

- [ ] When creating a new **Workspace** click onthe **Advanced** tab and set **Modtime...** to `true` and **rmdir** to `true` and **On submit** to `Revert unchanged files` then press `ok`

- [ ] In the workspace location create a new folder with the same name as the **Depot**, don't forget this is cap sensitive

- [ ] Copy the `.p4ignore` file into the folder. A generic sample can be found here [.p4ignore](../../files/.p4ignore).

- [ ] Open up **P4V** and make sure you are in the correct workspace. Select `Connection | Edit Current Workspace` then right click on the newly created workspace and select `Include Tree`.

- [ ] Add the `.p4ignore` file into a changelist and submit to server. Do this before copying over the **Unreal Project**.

- [ ] Now you are ready to copy over the **Unreal Projectt** files into this depot making sure the `.uproject` is in the same directory as the `.p4ignore`.  If not it will not work properly and all files, even binaries, will be included

- [ ]  Ensure **Depot** is added to both **Operator 1** and **Render Node** PC's in the lab. Please note that you cannot use the same workspace name twice but can use the same workspace root.  It is best practice to have Unreal program and workspaces installed on the same drive letter and directories on both **Operator 1** and **Render Node** machines.

<br><br>

| [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) | 
|---|
