## DECEMBER '21 Release Notes

This latest update to the TrackAbout website and apps brings several highly requested TAM6 features to the TAM7 for iOS and Android. This update also includes quality-of-life improvements, added TrackAbout API functionality, and bug fixes.

## Highlights

 - [Make and Unmake Packs in TAM7](#bm1) 
 - [Vendor Receive / Third Party Fill in TAM7](#bm2)
 - [Remove from Lot / Blowdown in TAM7](#bm3)
 - [Prevent wrong customer returns with the POD module](#bm4) 
 - [Variable volume product support with the POD module](#bm5)
 - [Hindi and Vietnamese support in TAM7](#bm6)
 - [TrackAbout quality-of-life improvements](#bm7)
 - [TrackAbout API additions](#bm8)



## <a id="bm1"></a> TAM7: Make and Unmake Packs
Previously only available in TAM6, you can now make packs (aka bundle build) and unmake/dismantle packs using TrackAbout Mobile 7 for iOS and Android smartphones. 

With Make Pack (aka Bundle Build), you assign assets to a pack (or bundle), where they are treated as a single group asset with its own product code. 
 
![](https://f.hubspotusercontent40.net/hubfs/5113190/TA1221-1.jpg)![](https://f.hubspotusercontent40.net/hubfs/5113190/TA1221-2.jpg)

Unmake Pack releases the assets in a pack so they can be handled as individual assets again.

![](https://f.hubspotusercontent40.net/hubfs/5113190/TA1221-3.jpg)

To learn more about Make Pack and Unmake Pack, see the [TrackAbout Wiki](https://meta.trackabout.com/wiki/Welcome_to_the_TrackAbout_Wiki). 
 
 
## <a id="bm2"></a>Vendor Receive/Third Party Fill
TAM6’s Vendor Receive / Third Party Fill feature is now available in TrackAbout Mobile 7 (TAM7).

With Vendor Receive / Third Party Fill, you can record assets received from and/or filled by a third-party, such as vendor-owned assets or assets you’ve sent out for cleaning, filling, or packaging.

![enter image description here](https://f.hubspotusercontent40.net/hubfs/5113190/TA1221-4.jpg)

To learn more about using Vendor Receive, see the [TrackAbout Wiki](https://meta.trackabout.com/wiki/Welcome_to_the_TrackAbout_Wiki). 


## <a id="bm3"></a>Remove from Lot / Blowdown
We’ve added TAM6’s Remove from Lot feature — aka Blow Down — feature to the TAM7 smartphone app. 

Remove from Lot lets you remove an asset from a lot simply by scanning the asset, and at the same time capture the reason the asset is being blown down. 

![enter image description here](https://f.hubspotusercontent40.net/hubfs/5113190/TA1221-5.jpg)
 
For details on how to use Remove from Lot, see the [TrackAbout Wiki](https://meta.trackabout.com/wiki/Welcome_to_the_TrackAbout_Wiki).


## <a id="bm4"></a>Prevent Wrong Customer Returns with POD
The POD module now helps prevent assets from being returned from the wrong customer by showing drivers a warning on the Asset Entry screen when an asset at one customer scans as a return from a different customer. For more information, please contact [TrackAbout Support](support@trackabout.com).


## <a id="bm5"></a>Variable Volume Product Support in POD
We’ve added support for volume collection to the POD module. 

Drivers can now enter the delivered volume of variable volume products using the TrackAbout Mobile smartphone app (TAM7).

![enter image description here](https://f.hubspotusercontent40.net/hubfs/5113190/TA1221-6.jpg)
 

## <a id="bm6"></a>Hindi and Vietnamese Language Support
TrackAbout Mobile 7 (TAM7) now supports Hindi and Vietnamese.


## <a id="bm7"></a>TrackAbout Website Quality-of-Life Improvements

 - We’ve added a Record ID column to the Integration Messages page that displays the ID of the record the message is for. You can filter the messages list by the new column and clicking a specific Record ID will open that record’s Record Summary page. 

![enter image description here](https://f.hubspotusercontent40.net/hubfs/5113190/TA1221-RecID.jpg)
 
 - We’ve added CollisionAssets columns to the OpenData.CollisionAssets view. 
 - Rack Fills - We’ve added support for up to 10% overfills on mixed-type assets by individual product code. Users will get a pop-up warning when they enter an overfill amount but will still be able to save if the asset’s specifications allow for overfills. To learn more about this new functionality, please contact [TrackAbout Support](support@trackabout.com). 

![enter image description here](https://f.hubspotusercontent40.net/hub/5113190/hubfs/TA1221-7.jpg)

 - Fixed a bug with the Lot Search page which caused incorrect results to be displayed under a specific combination of lot and location conditions.  
 - Trying to reclassify an asset during Sort Trip if the empty product code template uses custom asset information no longer causes an error. 
 - Duplicate delivery records are no longer created when two requests come in at the same time.


## <a id="bm8"></a>TrackAbout API Additions
 - You can now save carrier tracking information in delivery records in POST /deliveries and POST /deliveries/interbranch requests with the new carrierInfo element. 
 - You can now identify hard goods by name in delivery records, using the hardGoods element’s new productCode {mId} property in POST /deliveries and POST /deliveries/interbranch requests.
 - You can now set lot number flags when creating a product code through the API. 

Flags that can be set: 

    IsLotNumberRequired
    IsLotNumberRequiredDuringPick
    IsLotNumberRequiredDuringLoad
    isLotNumberRequiredDuringUnload 

Calls that support setting the flags:

    POST/classifications/productCodes, 
    POST /classifications/productCodes/batch
    PATCH /classifications/productcodes/{tid}
    POST /orders/pending/batch


  
  
