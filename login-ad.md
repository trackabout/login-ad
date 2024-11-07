# TrackAbout Release Notes (11/2024)

## Trackabout Mobile

-   **TRUCK LOAD INVENTORY**  — Living Manifest is now fully integrated into the [Truck Load Inventory](https://supportkb.trackabout.com/Content/Source/TAM7-UG/Truck-Load-Inventory.htm) action.
    
    Living Manifest is an optional TrackAbout feature that includes everything needed to manage and print a DOT manifest from a mobile printer paired with an Android mobile device running TrackAbout Mobile 7.
    
    With Living Manifest:
    
    -   Users can print a manifest from their Android mobile device (requires printer).
        
    -   Users can easily adjust the inventory for a manifest without needing to scan all the assets again by manually changing the number of items in the manifest as well as add new items to the manifest.
        
    -   You have the option to have TrackAbout prompt the user to open truck inventory and print a manifest after saving a delivery.
        
    
-   **Delivery (with Integrated Order Sync)**  — A new  _Online Mode_  option is available that enables real-time lookups and validations when your device is connected to the internet.
    
    By default, the Delivery (with Integrated Order Sync) action acts in  _Offline Mode_  and does not try to get additional information from TrackAbout even if your device is connected to the internet. Instead it relies solely on the limited set of TrackAbout data on your device since the last time it synced with TrackAbout. If more information is needed than is stored locally, you are prompted to provide the information.
    
    With Online Mode enabled, if internet service is available, Delivery (with Integrated Order Sync) connects to TrackAbout to get the information it needs first before prompting you to provide the information.
    
    To enable this option, contact TrackAbout Support.
    

## TrackAbout Web

-   **TrackAbout Dashboard**  — An issue that caused inaccurate location-dependent item counts to be displayed on the dashboard after switching the location filter from a single location to all locations has been corrected.
    

## OpenData

A [new view](https://supportkb.trackabout.com/Content/Source/Mods/OpenData/OpenData_Records_and_Assets.htm) is available to see an asset’s notes.

**opendata.AssetNotes**

**AssetId**  — The asset to which this note applies, foreign key to the Assets table.

**EnterDate**  — The date this note was created.

**UserId**  — The UserId of the user who created this note.

**UserName**  — Denormalized and concatenated full username of the user who created this note.

**Note**  — The actual user-entered note for the asset.
