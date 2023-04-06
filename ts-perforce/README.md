# Perforce Troubleshooting

### Symptoms
Sometimes you add files to a changelist and want to remove them without affecting the files

### Resolution
- Open a command prompt
- Use the following command `p4 revert -k -c default //...` if the files are on the default changlist
- If they're on a numbered changlist you can use `p4 revert -k -c CHANGELIST# //...`

---

### Symptoms
Unreal tells you it can't save a file.

### Resolution 1
- Open a command prompt. 
- `cd` into you Unreal Project folder, ie ` cd .\UnkownWanderer\`. 
- type the command `p4 sync` followed be enter.

*Note: We can also rt. click a file in the content browser to sync but sometimes this doesn't resolve the issue.* 

### Resolution 2
- Disconnect source control in Unreal
- Save your file
- Reconnect source control in Unreal
- Submit

---

### Symptoms
Project files are locked and no one has them checked out in Unreal.

### Resolution
Run `p4 retype -t binary //DEPOT/...`.  This will unlock **ALL** the files in the repo
 
---

### Symptoms 
Project files are locked.

### Resolution
Open P4V and rt. click the top folder with your locked files and choose **Unlock**.

---

### Symptoms
p4 info doen't show a root and says something like "Client Disconnected"

### Cause
p4 doens't know what the client running is called. 

### Resolution
run the command `p4 set P4CLIENT=p4Operator1`

---

### Symptoms
Sometimes we might get a mapping error in perforce.

### Resolution
- You can double click your workspace and change the view mapping there.
- Or, you can rt. click > edit workspace and go to text view to edit the mappings there.

---

### Symptoms
Getting latest from p4 doesn't download all of the files.

### Resolution
Open a command prompt and `cd` into your workspace directory and run `p4 sync`

---

### Symptoms
You cannot save a level while in Unreal 

### Resolution
Run **Task Manager** and look for stray **Unreal** instances that are still around.

---

### Symptoms
Sometimes you can't save a file in Unreal. 

### Cause
1. Sometimes this is because Perforce can't isn't actually connected in the editor even though it says it is. 
2. This could also be becuase a ghost session of the Unreal Editor is using the file. 

### Resolution
1. First, try reconnecting source control in the bottom right hand corner of the window. 
2. If that doesn't work, use the windows program "Resource Monitor" to search for the file in question using the "Associated Handle" search box. This tells you what program in using the file, often a ghost instance of Unreal, and sometimes one that may not even show up in Task Manager. You can then go to the processes tab and end task the one with the same PID.
3. If you have more than 2 ghost sessions you can probably just look at CPU usage to see which one is on the active window. You could also use Microsoft's Process Explorer program to figure out the PID  of the active window.


| [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) | 
|---|

