<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### P4 New Depot

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

<sub>[home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents)</sub>

Start-Up Procedure for Operator 1

<br>

---

- [ ] In **P4 Admin** press `File | New | Depot`.

- [ ] Enter name for new Depot (don't include spaces)

- [ ] Select either **local** for no branching/streaming or **stream** for branching/streaming projects.  If you don't know what streaming is, then select **local**

- [ ] Press `OK`

- [ ] Assign persmissions to the correct **Group** in **P4 Admin** so that the workspace can access the file

- [ ] If it is a new group, a new workspace might have to be created

- [ ] In the workspace location create a new folder with the same name as the **Depot**, don't forget this is cap sensitive

- [ ] Copy the `.p4ignore` file into the folder

- [ ] Open up **P4V** and make sure you are in the correct workspace. Select `Connection | Edit Current Workspace` then right click on the newly created workspace and select `Include Tree`.

- [ ] Add the `.p4ignore` file into a changelist and submit to server.  Do this before copying over the **Unreal Project**.

- [ ] Now you are ready to copy over the **Unreal Projectt** files into this depot making sure the `.uproject` is in the same directory as the `.p4ignore`.  If not it will not work properly and all files, even binaries, will be included
<br><br>

| [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) | 
|---|
