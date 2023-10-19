# TrackAbout v342 Release Notes (Preliminary)


## TrackAbout Mobile 7 (iOS and Android)
* **New Recent Deliveries Action** — The new Recent Deliveries action lets you view details about recent deliveries, as well as view and reprint delivery receipts from those deliveries.
  
* **Owner Customer** — If you have enabled the Owner Customer option, the owners available for selection in your Ownership list are now automatically the same as your Customer list. To add an owner to the Ownership list, simply add them as a Customer. You no longer need to create a separate entry in your Ownership list for each Customer.
  
* **Ship and Return Totals** — Ship and return totals are now displayed in Delivery with Integrated Order Sync. 


## TrackAbout Web
* **Skip Hydraulic Test Date Validation for Selected Asset Families and Asset Types** — We've added the option to skip Hydraulic Test date validation for assets in specific asset families and asset types when using star stamp or approval codes. When enabled, the option to skip becomes available on both the Asset Family and Asset Type pages.
If you're interested in enabling this option, contact TrackAbout Support.
* **Hard Good Descriptions** — The Order details page now displays descriptions for hard goods.


## TrackAbout API
* **API** — You can now set the customer email address for delivery receipts when sending orders through the TrackAbout API (POST /orders/pending/batch) and TrackAbout Legacy API (deliveries.asmx), using the new DeliveryReceiptEmail element.
