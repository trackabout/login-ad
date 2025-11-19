# What's New: [November 2025 Release Notes](https://datacor.clickhelp.co/articles/project-trackabout-kb/358-release-notes)



### Enhancements

* **TrackAbout Mobile 7 » Generic Actions** - We've added the ability to print (HTML and Thermal Printer) from Generic Actions. Information collected in the Generic Action can be included in the print-out, including:

  * Ownership 
  * Product Code
  * Use State
  * Location
  * Customer
  * Lot Number
  * Dynamic Form Data
  * Asset Barcodes and Serial Numbers

Printing from Generic Actions works best when using templates to format the printout. For help creating customized templates based on your use case, contact [TrackAbout Support](ta-support@datacor.com). 

* **TrackAbout Mobile 7 » Editing Records** - Users can now be required to enter a reason when editing records. Reason fields for the activities listed below can now be made mandatory. To set up this feature, contact TrackAbout Support.

  * Delete Record
  * Change Record Date and Time
  * Detach Assets
  * Attach Known Assets
  * Change Lot Number (on Fill records and other records that can set the lot number)
  * Change Truck Load / Unload (on Load Truck and Unload Truck records)
  * Move to Another Delivery (on Handoff records)
  * Switch Use in Forecast (for Bulk Delivery records)

* **TrackAbout Web » User Access Control** - The new *Set user passwords* permission lets designated users reset any user’s password. Users with only this permission can edit another user's password but not change any other user properties.
* **TrackAbout Mobile » Traditional Chinese Language Support** - TrackAbout now supports Traditional Chinese (zh-Hant).
* **TrackAbout Mobile » Maintenance with Work Orders** - Support for scanning a combination product and lot barcode has been added.  Scanning the same code repeatedly increments the quantities of the same product and lot.
* **TrackAbout Mobile » Delivery (with Integrated Order Sync)** - The ability to register complaints through Delivery (with Integrated Order Sync) can now be disabled. By default, users can select to register complaints from the menu in Delivery (with Integrated Order Sync). Disabling this ability removes that ability. To change the default, contact TrackAbout Support.
* **TrackAbout Web » Web Service Credentials** - Users can now add or update their web service credentials directly in TrackAbout Web instead of depending on TrackAbout Support. Access to this functionality is optional and can be enabled by TrackAbout Support.
* **Introducing Push APIs for Real-Time Data Delivery and Event Notifications** - To enhance real-time data delivery and reduce the need for frequent update requests, TrackAbout is introducing Push APIs. Unlike traditional REST APIs, which require applications to request updates at regular intervals, Push APIs enable TrackAbout systems to send updates automatically as events occur, in real time. This approach improves efficiency and ensures users receive the most current information without making repeated requests. The following Push APIs are included in this release:

  * **API » Push API for Mark Lost Records** - Triggers when the lost status of an asset has changed.
  * **API » Push API for Delivered Orders** - Triggers when a delivery is verified.
  * **API » Push API for Use State and Location Change Events** - Triggers when an asset’s location or use state changes.



### Fixes

* **TrackAbout Mobile » Fill** - Assets that have a test date expiration on the first day of the month can now be scanned throughout the day on the last day of the previous month.
* **TrackAbout Web » Record Summary** - Records with lines having more than one difference reason code now display correctly in the summary.
