# XRStudioSetup

## Table of Contents

### TLDR

The TLDR's are for students and faculty already trained on the system for a quick reminder for all the steps in the various roles to get up and running on your shoot.

* [UE4 Template for Single Camera LED Wall Shoot (No RT)]()
* [Create new Config for Switchboard]()
* [Operator 1 Start-Up Checklist](op1-startup/README.md)
* [Operator 1 Shut-Down Checklist](op1-shutdown/README.md)
* [Camera Tracker Start-Up Checklist](mocap/README.md)
* [Operator 1 Production Checklist](op1-production/README.md)
* [Camera Tracking Info]()

### Unreal

#### Setup project with all the settings for the LSU LED Wall with no ray tracing walk through. Creating a UE4.27 Single Camera UE4 4.27 Project From Scratch. 
* [Setting Up Project](unreal-base-setup/README.md#setting-up#user-content-setting-up-project)
* [nDisplay Config](ndisplay-config/README.md#user-content-ndisplay-config)
* [Live Link](live-link/README.md#user-content-live-link)
* [HDR Output](hdr-output/README.md#user-content-hdr-output)

#### Setup Project will all the settings for the LED wall in UE5.  Creating a UE5.0.1 Single Camera project from scratch. Ray tracing should automatically be used when connected to an RTX or ray tracing compatible GPU.

* [Setting Up Project](unreal5-base-setup/README.md#setting-up#user-content-setting-up-project)

### Perforce
* [Add Depot to Perforce](p4/newdepot/README.md)

### Indiemark Lens Encoder
* [Setting Up Lens Encoding](indie-mark/README.md#user-content-indie-mark)
* [nDisplay Config](ndisplay5-config/README.md#user-content-ndisplay-config)

### Studio
* [Startup and Shutdown Procedures](startupshutdown/README.md)

### Troubleshooting
* [General Troubleshooting](ts-perforce/README.md)

### Tips
* Run unreal regularly when doing work.  Do **NOT** use **Switchboard** if adding objects and making changes to levels. Changes during **Switchboard** should only be repositioning of objects in the scene.

### Add To Walkthrough
* When using level streaming make sure the streaming method is set to **Always Loaded** and NOT **Blueprint** loaded as it will not go to **nDisplay**.

### Links
* [Indiemark lense encoder instructions](https://loledvirtual.com/documentation/docs/indiemarkusingencoder/)

---
<details><summary>Dev Tips</summary>
make git m="add commit message"
</details>

