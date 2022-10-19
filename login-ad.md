# What's New

It's alive! The October 2022 update to TrackAbout adds support for [Bluetooth barcode and RFID scanners](#Bluetoot) to TrackAbout Mobile 7 (Android), as well as:

*   [The ability to hide Invoiced Quantity from being displayed on the Record Summary and Verification pages](#Hide)
    
*   [Improved Epicor Prophet 21 Branch Transfer integrations](#Improved)
    
*   [TrackAbout Mobile 7 enhancements](#TrackAbo)
    
*   [General enhancements](#General)
    

## <a id="Bluetoot"> </a>Bluetooth Barcode and RFID Scanner Support

Scanning assets with TrackAbout Mobile 7 using your phone's built-in camera is fast and reliable, but there are times when having another scanning method might fit your workflow better. That's why we've added support for hand-held barcode and RFID scanners to TrackAbout Mobile 7 (Android only).

Handheld barcode and RFID scanners are widely available from numerous manufacturers, with models ranging from inexpensive on up, depending on features. Any basic scanner that Bluetooth scanner that supports HID communication and can pair with an Android phone should work with TrackAbout Mobile 7. However, due to the vast array of scanners out there, we can't guarantee that any particular make/model is 100% compatible with TrackAbout or meet your business needs.

For more information about using Bluetooth barcode and RFID scanners with TrackAbout Mobile 7 (Android), see the full [October 2022 Release Notes](https://corp.trackabout.com/releasenotes/october-2022).


## <a id="Hide"> </a>Hide Invoice Quantity Information on the Record Summary and Verification Pages

If you're only comparing orders to verify deliveries, you can now hide Invoiced Quantity from being displayed on the Record Summary and Verification pages.

This gives you three options for what information is displayed on those pages:

*   Only show invoices
    
*   Show orders _and_ invoices
    
*   Only show orders (New)
    
If you'd like to change your display option, reach out to [TrackAbout Support](mailto:support@trackabout.com).


## <a id="Improved"> </a>Improved Branch Transfer Integrations with Epicor Prophet 21

We've improved how Branch Transfer Send and Receive actions work with Epicor Prophet 21 systems when dealing with multiple line items that have the same product code.

*   As assets are scanned or added to the Transfer Send or Receive action, lines are now fulfilled in ascending order by line item number.
    
*   Any assets added over the required quantity are now added to the highest line item number (instead of the lowest).
    
*   When Transfer Send and Receive actions are integrated into Epicor Prophet 21, each line item now allocates the appropriate quantities to each line.
    

## <a id="TrackAbo"> </a>TrackAbout Mobile 7

*   Remove from Lot (aka Blow Down) now sets the asset's location to the specific location where it was removed (aka blown down) instead of simply to in-house.
    
*   Scanning a container for picking no longer prevents it from being scanned again for the same trip.
    
*   An issue that prevented TAM7 from displaying the correct value of a Custom Asset Info (CAI) for capacity has been fixed.
    

## <a id="General"> </a>General

*   TrackAbout now correctly recognizes that the value of an asset's Oxygen flag (Custom Asset Info Type 761) has been manually changed from Yes to No, letting you reclassify the asset without TrackAbout Support help.
