# Tips
A place for some tips to wokring with virtual production with Unreal. 

## When Perforce is Down
You don't actually have to use Perforce with Switchboard. Here are steps to use if Perforce goes down using Windows robocopy.

1. Map a Network drive to your Perforce directory on your operator node. 
2. Create a folder named the same as your Unreal project on the mapped network drive, e.g., `ICVFXProductionTest`. 
3. Use robocopy to transfer  
    - `robocopy C:\p4\virtualproduction_xrlab-operator\demos\ICVFXProductionTest Z:\virtualproduction_xrlab-render\demos\ICVFXProductionTest /MT /Z /MIR /R:10 /W:3 /DCOPY:DAT /XD Binaries Saved Intermediate DerivedDataCache FileOpenOrder obj`
    - The `/MT` flag enables multi-threading for higher performance. The `/Z` flag allows the transfer to be restarted if interrupted. The `MIR` flag deletes destination files that don't exist on the source and also transfers directories. The `/R:10` flag retries a file 10 times if it failes. The `/W:3` flag waits 3 seconds before retires. The `DCOPY:DAT` flag copies timestamps on directories. The `/XD` flag ignores the subsequent directories.
5. Proceed with using Switchboard 
