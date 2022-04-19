Steps for using UE4 Layers and Composure with LiveFX to place a virtual object in front of the physical camera's video output.


Components attached to:
  Render PC:
  - 2x Black Magic 4k Decklink Mini
  Compositing PC:
  - 1x Black Magic 8k internal card


Physical Setup:
1. Hook up the two Decklink Mini's to the render PC by Thunderbolt
2. Connect an output from two Decklink Mini's to the Compositing PC's internal Black Magic Card using SDI cables


Create a Layer for your foreground objects:
1. Open Layers tab (I like to place this tab in the upper right World Outliner zone)
2. Select objects in World Outliner that you want to have in front of the physical camera's video output.
3. Right click in the Layers tab and select "add selected objects to new layer"
4. Name the layer "Layer_Foreground"


Create output layers in Composure:
1. Open Composure tab (I like to also place this tab in the upper right World Outliner zone along with Layers)
2. Create a new Composite
3. Create a new CG Layer and name it "Comp_Foreground"
4. Create a new CG Layer and name it "Comp_Background"
5. Create a folder in World Outliner and add your three new Composure components to this folder to make finding them easier.
6. Select your "Comp_Foreground" Composure layer 
    6a. Go to Input. Add an "include" item in the drop-down and select "Layer_Foreground".
    6b. Go to Output and use the drop-down to add a composite layer. Choose Black Magic Media and name it "BM_Foreground".
    6c. Open the "BM_Foreground" and setup the output settings (choose which Decklink Mini and video resolution/fps/etc)
7. Select your "Comp_Background" Composure layer
    7a. Go to Input. Add an "exclude" item in the drop-down and select "Layer_Foreground".
    7b. Go to Output and use the drop-down to add a composite layer. Choose Black Magic Media and name it "BM_Background".
    7c. Open the "BM_Foreground" and setup the output settings (choose which Decklink Mini and video resolution/fps/etc)
8. TBD - NEED TO CREATE AN OUTPUT FOR FOREGROUND ALPHA CHANNEL
9. Check the preview screens on the Decklink Mini's to make sure they are receiving the correct outputs from Composure.


Create live composite in LiveFX...
