# What's New: December 2023


## Field Service Support
We've added Field Service delivery support to TrackAbout and TrackAbout Mobile 7.

**NOTE:** These optional features require the Delivery with Integrated Order Sync module. Some of the features require integration with Datacor ERP (or another ERP system) using the TrackAbout API for full functionality, as well as configuration and customization by TrackAbout. If you are interested in using these features, please contact TrackAbout Support.

These new features let drivers use TrackAbout Mobile 7's Delivery (with Integrated Order Sync) action to:

* Fulfill individual field service items as non-tracked assets, and record services performed during deliveries
  
* Collect and record payments in the field in cash or by check
  
* See field service line items alongside tracked assets, non-tracked assets, and hardgoods
  
* See notes about open AR details as provided by your ERP
  
* See clickable URLs in Notes
  
* See default prices for field service items

* Register the delivery of one of a field service item each time its lot number is scanned
  


## Fixes

* **TrackAbout Mobile 7** — Photos taken by TrackAbout Mobile 7 on devices using Android 12 or higher now can be viewed in other apps.
  
* **TrackAbout Mobile 7** — Empty strings are no longer saved if a user does not make a selection during Bulk Deliveries.
  



## TrackAbout API
**Additions to Post: /trucks/{truckId}/assets/loadetat/{locationId}**

* *TripNumber* — The trip number associated with this load.

* *SaveLotNumberPcMappings* — Indicates whether or not to save a lot number / PC mapping. A true value enables a feature with limited in scope and thus should remain false for better performance.

For more details, click [here](https://trackabout.com/api/docs/#!/trucks/posttruckstrucktidassetsloadedatlocationtid).

**Additions to POST /deliveries**

*RecordPayment* — Used to accept and save payment collection information.

For more details, click [here](https://trackabout.com/api/docs/#!/deliveries/postdeliveries).

**Additions to GET /orders/verified, GET /orders/verified/{ordernumber}, and GET /orders/verified/new**

* *RecordServiceItem* —  Used to accept and save service item information.
* *VerifiedOrderRecordPayment* — Used to add payment collection information to verified orders.
* *VerifiedOrderServiceItem* — Used to add service information to Verified Orders.

For more details, see:

* <https://trackabout.com/api/docs/#!/orders/getordersverified>
  
* <https://trackabout.com/api/docs/#!/orders/getordersverifiedordernumber>

* <https://trackabout.com/api/docs/#!/orders/getordersverifiednew>

**New POST /prices call for creating or updating default pricing and tax information**

For more details, click [here](https://trackabout.com/api/docs/#!/prices/postprices).

**New POST /trips/prices call for creating or updating the pricing and tax information for a given list of trips**

For more details, click [here](https://trackabout.com/api/docs/#!/trips/posttripsprices).
