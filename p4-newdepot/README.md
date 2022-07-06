![](../images/line3.png)

### P4 New Depot

<sub>[previous](../) • [home](../README.md) • [next](../)</sub>

![](../images/line3.png)

Procedure for creating a new Depot in P4.

<br>

---

1. In **P4 Admin** press `File | New | Depot`.`

2. Enter name for new Depot (don't include spaces). The name should be `YEAR-SEMESTER-CLASS-SECTION-MACHINE` for example **2022-Spring-ART4240-03**

3. Select either **local** for no branching/streaming or **stream** for branching/streaming projects. If you don't know what streaming is, then select **local**

4. Press `OK`

5. Assign persmissions to the correct **Group** in **P4 Admin** so that the workspace can access the file. Ideally the **Group** would be called `CLASS-SECTION`.

6. Create a new user that has access to this new depot that is a member of the above group.  Select `File | New User` then enter a new username and you can use the same as the group. Assign an easy to remember password for the entire class. This user should only be use in the lab computers. Under **Groups** click on `Browse` and select the above group.

7. Go to **Permissions** tab and insert line and assign the new group the correct **Folder/File**. Press `Save Edits`.

8. If it is a new group, a new workspace might have to be created. The workspace name should be CLASS-MACHINE for example **ART4240Operator**. Keep the workspace root the same on both **Operator** and **Render Node** machines.

9. When creating a new **Workspace** click onthe **Advanced** tab and set **Modtime...** to `true` and **rmdir** to `true` and **On submit** to `Revert unchanged files` then press `ok`

10. In the workspace location create a new folder with the same name as the **Depot**, don't forget this is cap sensitive

11. Copy the `.p4ignore` file into the folder. A generic sample can be found here [.p4ignore](../../files/.p4ignore).

12. Open up **P4V** and make sure you are in the correct workspace. Select `Connection | Edit Current Workspace` then right click on the newly created workspace and select `Include Tree`.

13. Add the `.p4ignore` file into a changelist and submit to server. Do this before copying over the **Unreal Project**.

14. Now you are ready to copy over the **Unreal Project** files into this depot making sure the `.uproject` is in the same directory as the `.p4ignore`.  If not it will not work properly and all files, even binaries, will be included

15. Ensure **Depot** is added to both **Operator 1** and **Render Node** PC's in the lab. Please note that you cannot use the same workspace name twice but can use the same workspace root. 

16. Ensure that the environment variable is set and in command prompt in **p4** enter `p4 set P4IGNORE=.p4ignore`.

---

![](../images/line.png)

CREATE BANNER WITH https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE

![](../images/line.png)

| [previous](../)| [home](../README.md) | [next](../)|
|---|---|---|
