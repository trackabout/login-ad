# April 2022 Release Notes

The April 2022 release of TrackAbout for the web and mobile devices adds several new features, including: 

- [The option to specify a route in TAM7 with POD](#bm1)
- [Delivery and Return Order Support for non-scanned assets and assets with empty product codes in POD](#bm2)
- [The ability to create manifests from Branch Transfer Send Records](#bm3)
- [Descriptions when adding hard goods to new orders](#bm4)
- [New hard good- and consumable-related OpenData tables](#bm5) 


## <a id="bm1"></a> Route Selection in TAM7 with POD 
You can now specify a Route in addition to Branch Location and Deliver From (either a Branch Location or Truck) with TrackAbout Mobile 7 (for iOS and Android) and [TrackAbout’s Proof of Delivery (POD) module](https://meta.trackabout.com/wiki/Proof_of_Delivery_%28Paperless_Delivery%29), which lets drivers and dock workers record customer deliveries without needing a paper copy of the order.

The option to specify a route is available from the TAM7 menu, under Configuration.

![enter image description here](https://5113190.fs1.hubspotusercontent-na1.net/hubfs/5113190/pod%20route.png)
![enter image description here](https://5113190.fs1.hubspotusercontent-na1.net/hubfs/5113190/pod%20route%202.png)


The routes you can select through TAM7 vary depending on your working location. 

For more information about [TrackAbout’s Proof of Delivery module](https://meta.trackabout.com/wiki/Proof_of_Delivery_%28Paperless_Delivery%29), contact [TrackAbout support](mailto:support@trackabout.com).


## <a id="bm2"></a> Creating Manifests from Branch Transfer Send Records 
You can now create manifests from branch transfer records, for both scanned and not-scanned assets. If you have pending branch transfer send records, you’ll see a new option on the Create Manifest page on the website.

*NOTE:* The Branch Transfer Send feature can be enabled by [TrackAbout support](mailto:support@trackabout.com).

![enter image description here](https://5113190.fs1.hubspotusercontent-na1.net/hubfs/5113190/createmanifest2.png)

Select “Branch Transfer Send” and click SELECT RECORDS to select the branch transfer records to add to the manifest just as you would if selecting records for a location manifest.


## <a id="bm3"></a> Descriptions When Adding Hard Goods to New Orders
When [selecting a hard good to add to a new order](https://meta.trackabout.com/wiki/Consumables_and_Hard_Goods), the drop-down list now displays hard good descriptions along with their product codes (*Add New Order > Add Hard Good > Product Code*).

![enter image description here](https://5113190.fs1.hubspotusercontent-na1.net/hubfs/5113190/AddHardGood.png)
 

## <a id="bm4"></a> POD Delivery and Return Order Support for Not-scanned Assets and Assets with Empty Product Codes
[TrackAbout’s Proof of Delivery module (POD)](https://meta.trackabout.com/wiki/Proof_of_Delivery_%28Paperless_Delivery%29) now supports adding non-scanned assets and assets with empty product codes to customer delivery and return orders through TrackAbout Mobile 7. 

With this feature enabled, any non-scanned assets or assets with empty product codes in a customer delivery order are listed as order line items the same as assets with product codes.  

To enable this functionality contact [TrackAbout support](mailto:support@trackabout.com).


## <a id="bm5"></a> New Tables for OpenData 
We’ve added some new hard good and consumable-related tables to [OpenData](https://meta.trackabout.com/wiki/OpenData), TrackAbout’s add-on modular feature that lets you access a simplified, read-only view of your TrackAbout SQL database.

[RecHardGoods](https://meta.trackabout.com/wiki/OpenData#opendata.RecHardGoods) — Records the quantity and type of hard good and consumable assets attached to a given record. 

[HardGoodProductCodes](https://meta.trackabout.com/wiki/OpenData#opendata.HardGoodProductCodes) — Stores your system’s hard good and consumable product codes and definitions.

[RecordDifferenceReasonCodes](https://meta.trackabout.com/wiki/OpenData#opendata.RecordDifferenceReasonCodes) — Stores the recorded reasons when there were discrepancies in the record compared to the expected quantities.

[DifferenceReasonCodes](https://meta.trackabout.com/wiki/OpenData#opendata.DifferenceReasonCodes) — Stores the list of possible reasons that can be used when recording discrepancies in the record compared to the expected quantities.

