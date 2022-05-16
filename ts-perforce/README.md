# Switchboard Troubleshooting

### Symptoms
You cannot save a level while in Unreal 


### Resolution
Run **Task Manager** and look for stray **Unreal** instances that are still around.

---

# Perforce Troubleshooting

### Symptoms
Project files are locked and no one has them checked out in Unreal.

### Resolution
Run `p4 retype -t binary //DEPOT/...`.  This will unlock **ALL** the files in the repo
 
---

### Symptoms
p4 info doen't show a root and says somehting like "Client Disconnected"

### Cause
p4 doens't know what the client running is called. 

### Resolution
run the command `p4 set P4CLIENT=p4Operator1`

---

### Symptoms
Swtichboard gives a socket error when trying to sync changes.

### Cause
Switchboard listenter isn't running

### Resolution
Open up Switchboard Listener by double clicking its icon on the desktop.



| [home](../README.md#user-content-gms2-background-tiles--sprites---table-of-contents) | 
|---|

