## FEBRUARY/MARCH 2022 Release Notes
TrackAbout’s February/March 2022 update adds Gas Analysis to TrackAbout Mobile 7, support for fractional hardgoods quantities, and other enhancements.


## Highlights
- [Gas Analysis in TrackAbout Mobile 7](#bm1) 
- [Fractional hard good quantities support](#bm2) 
- [Location-based hard good order limits](#bm3) 
- [New not-scanned views in OpenData](#bm4) 
- [Numerous quality-of-life improvements](#bm5) 


## <a id="bm1"></a> Gas Analysis Support Added to TrackAbout Mobile 7
TrackAbout’s [Gas Analysis](https://meta.trackabout.com/wiki/Gas_Analysis) module helps eliminate paperwork by validating, recording, and attaching analysis information to a production record using *TrackAbout Mobile 5*, *TrackAbout Mobile 6*, and new with this release, ***TrackAbout Mobile 7 for iOS and Android***. 

![](https://f.hubspotusercontent40.net/hub/5113190/hubfs/03RN-1.png)

For more details about TrackAbout’s Gas Analysis module, including step-by-step instructions on how to set up the criteria and validations for analysis tests in your TrackAbout website and how to perform tests with a mobile device, please see [Gas Analysis](https://meta.trackabout.com/wiki/Gas_Analysis).


## <a id="bm2"></a> Recording Fractional Quantities of Hardgoods
We’ve added decimal support for hardgoods to TrackAbout and TrackAbout Mobile 7, letting you record and track hardgoods that are traditionally delivered in partial quantities. By default, hardgoods can be recorded and tracked in quantities out to two decimal places (or hundredths). Other levels of precision are available to fit your specific needs — contact [TrackAbout Support](mailto:support@trackabout.com) for more information. 


## <a id="bm3"></a> Hardgoods Order Limits by Location
TrackAbout administrators can now set a maximum quantity of any given hard good that can be ordered for a location. Limiting the amount of a hard good each location can order can help you keep a handle on inventory and enforce specific business rules.

To limit the order size of a specific hard good for a specific Location, the hard good must have a set maximum order quantity, and the locations the maximum will apply to must be flagged. Both can be done with assistance from [TrackAbout Support](mailto:support@trackabout.com). 

Once a maximum order quantity has been set for a hard good, users will not be able to enter an Ordered Quantity that exceeds the maximum for any location that’s been flagged to observe the limit, either manually or by using the API. 
![enter image description here](https://f.hubspotusercontent40.net/hubfs/5113190/03RN-2.png)


## <a id="bm4"></a> New Not-Scanned Views in OpenData
We’ve added three new views to OpenData, TrackAbout’s add-on modular feature that lets you access a simplified, read-only view of your TrackAbout SQL database.

**opendata.RecAssetsNS** 
Records the quantity and type of Not-Scanned assets attached to a given record, always involving a Holder (Customer), which impacts that holder's balance. 

**opendata.RecAssetsFailedRNS** 
Records the quantity of Returned Not-Scanned assets that could not be attached when the record was saved due to insufficient balance at the time of the attempt. 

**opendata.RecNonHolderNSAssets** 
For tracking quantities and types of not-scanned assets attached to records that do not involve a Holder (Customer).

For complete details on the columns included in these new views, see the [OpenData reference](https://meta.trackabout.com/wiki/OpenData#Not-Scanned_Assets_on_Records).


## <a id="bm5"></a> Quality-of-Life Improvements

### TrackAbout

 - Sorting and search results are more accurate on the Current Inventory page: 
 -- The display can now be sorted by column, in ascending or descending order. 
 -- Search results when searching All Locations no  longer shows inactive assets. 
 -- Search results when searching by individual product code no longer shows only unclassified assets. 
 - An issue that prevented the Custom Report page’s report filter from working has been corrected.
 - Attach/Detach Hardgoods options are now available on Send/Receive records, for users with the appropriate permissions.
 - The Sync Problems page now has a column indicating if a request is duplicated. 
 - We’ve made it simpler to change the customer on a delivery on Record Edit and other pages by passing the search value to the Customer Search page, eliminating the need to search again.

### TrackAbout Mobile 7

- Branch Transfer Send now records the truck location as the resulting location in records and asset history.
- Branch Transfer Send and Branch Transfer Receive uses the default billing code for hardgoods in records.
- The GET/orders/verified/{ordernumber} API call now returns the correct quantities when non-scanned assets are included in Branch Transfer Sends and Branch Transfer Receives. 
- Sent products and quantity sent are now displayed when Auto-Receive is enabled. 
- Rack Fills in TrackAbout Mobile 7 no longer fail with a “Empty
- Product Code” error when using short descriptions in place of names and PC generation.

### TrackAbout API

 - You can now delete all pending orders in a trip with a [TrackAbout REST API](https://github.com/trackabout/API/wiki) call.

> DELETE /locations/{LocationTId}/trips/{TripNumber}/orders/pending
> DELETE /trips/{TripNumber}/orders/pending
