# Tips
A place for some tips to wokring with virtual production with Unreal. 

## When Perforce Down
You don't actually have to use Perforce with Switchboard. Here are steps to use if Perforce goes down using Windows robocopy.

1. Map a Network drive to your Perforce directory on your operator node. 
2. Create a folder named the same as your Unreal project on the mapped network drive, e.g., `ICVFXProductionTest`. 
3. Use robocopy to transfer  
    - `robocopy C:\p4\virtualproduction_xrlab-operator\demos\ICVFXProductionTest Z:\virtualproduction_xrlab-render\demos\ICVFXProductionTest /MT /Z /MIR /R:10 /W:3 /DCOPY:DAT /XD Binaries Saved Intermediate DerivedDataCache FileOpenOrder obj`
5. Proceed with using Switchboard 
