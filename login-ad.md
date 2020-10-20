![](https://lh3.googleusercontent.com/JUMbamFu9ZQjZ0ozsBze6QsBj_yetbHJmXZLPCG4qz7G2rnR1gIsWIQ1VnXJI0glxB_L7k4NVmFRWiWn4a2HK7-deDTTeNeovROfjdpbzSb-40LengiouCmdawWEJ45lPSMVEnC2)

TrackAbout Release Notes - October 2020

TrackAbout regularly puts out new features and improves existing ones. Here is a brief summary of the latest changes to expect in the release expected to be in production within the next month:
**Items may need subscriptions through separate modules*
### New TrackAbout TAM7 (Android / iOS) features:
#### Editing Serial Number (S/N) during Add New with Lookup
During TrackAbout’s registration process (some call this Add New, Register Assets) we now provide user permission to edit the Serial Number on existing assets. This permission can be restricted to specific users so that this key master data cannot be changed under normal circumstances.
-   This feature is not automatically turned on, but you can request to have this feature turned on by emailing [support@trackabout.com](mailto:support@trackabout.com).
-   This can be turned on to allow all users to edit this field or only allow certain users based on their user profile setting (Internal Users).

#### Pinch to Zoom
You can now "pinch to zoom" during camera barcode scanning, just like your phone camera does outside of TrackAbout.

#### Rack Filling
Rack Filling is now available on TrackAbout TAM7. Racks (typically manifolds for filling groups of assets at the same time) can be configured in TrackAbout for use during Filling. Racks are configured to relate to:
-   Tanks
-   Asset Families (Filling Families)

Rack Filling can be done for both Tracked and Not Scanned Assets. Some of the features of Rack Filling include:
- Restricting rack access by user
- Restricting available asset families by rack
- Fill by Method (for example: pressure, volume, quantity)
- Checking pressure versus max pressure of the rack
- Product Code Generation *(for use with many full codes to 1 empty code mapping: UseCapacityInProductCodeSelection, EnableSelectionOfProductCodeInContainerFill)*
- Automatically creating ramp lot numbers
- Secondary Add New
- Allowing NS and tagged assets to be added to a record
- Next Rack functionality (AllowNextRackOnContainerFill)
- Allow viewing of lot number
- Pause a fill (EnableServerSidePausingDuringFill)
- Save & Analyze --> no Analysis action yet, this is just for reference
- If a record has not been synced, prompt the user to save the record before continuing (RequestRecordSyncBeforeStartingInternalAction)
- Various validations
[Please review the powerpoint presentation about Rack Filling on our TrackAbout Wiki](https://meta.trackabout.com/wiki/Rack_Filling#How_it_Works)

#### Wireless Lookup Updates
During Wireless Lookup (also called Asset Lookup), users can now:
- Look up assets by Serial Number
- Edit Serial Numbers: provide user permission to edit the Serial Number on existing assets. This permission can be restricted to specific users so that this key master data cannot be changed under normal circumstances.
- See what assets are contained in a Pallet (only available if using Palletization)
### TrackAbout Website Changes:
#### Through our API Customer Order Integration, we now support the ability to set a Delivery Window. This controls the period in which your drivers will see pending deliveries on their devices. (This is only available through TrackAbout Proof of Delivery.)
If you would like to add any of these new features or have questions about how to use them please contact your TrackAbout Support team at [support@trackabout.com](mailto:support@trackabout.com)