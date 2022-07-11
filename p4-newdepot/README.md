![](../images/line3.png)


### P4 New Depot

<sub>[previous](../) • [home](../README.md) • [next](../operator-and-render)</sub>

![](../images/line3.png)


Procedure for creating a new Depot in P4.

<br>

---

1. In **P4 Admin** press `File | New | Depot`.

2. Enter name for new Depot (don't include spaces). The name should be `YEAR-SEMESTER-CLASS-SECTION` for example **2022-Spring-ART4240-03**

3. Select either **local** for no branching/streaming or **stream** for branching/streaming projects. If you don't know what streaming is, then select **local**

4. Press `OK`

5. Create a **group** for these 2 users named after the `class` for instance **art4240**.

6. Create 2 new users that have access to this new depot that is a member of the above group: `class-operator` and `class-render`. For example, **art4240-operator** and **art4240-render**. Select `File | New User` then enter a new username. Assign an easy to remember password for the entire class. These users should only be use in the lab computers. Under **Groups** click on `Browse` and select the above group.

7. Go to **Permissions** tab and insert line and assign the new group the correct **Folder/File**. Press `Save Edits`.

#### Resources
* https://www.perforce.com/products/helix-core/configure-helix-core-game-engine#tab-panel-49191

---

![](../images/line.png)

[![Next Up](https://fakeimg.pl/1000x100/45d7cb/000/?font_size=54&text=Next+Up+-+Set+Up+Operator+and+Render)](../operator-and-render)

![](../images/line.png)

| [previous](../)| [home](../README.md) | [next](../operator-and-render)|
|---|---|---|
