# Perforce Troubleshooting

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

# Switchboard Troubleshooting

### Symptoms
You cannot save a level while in Unreal 

### Resolution
Run **Task Manager** and look for stray **Unreal** instances that are still around.

---

### Symptoms
Switchboard gives a socket error when trying to sync changes.

### Cause
Switchboard listener isn't running

### Resolution
Open up Switchboard Listener by double clicking its icon on the desktop.




| [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) | 
|---|

