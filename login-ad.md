# October 2024  Release Notes 

## TrackAbout Mobile 7

 - **CREATE ORDER Action Changes** — The Create Order action now automatically selects Order Type (Customer or Transfer) based on the customer you select,  and you’re no longer prompted to select an Order Type when the action starts. 

	New configuration options are also available to further change how Create Order works. To enable any of the following options, contact TrackAbout Support for a configuration change.

	- *Purchase Order Numbers* — By default, the purchase order number is optional. This behavior can be changed to show the purchase order number, hide the purchase order number, or make the purchase order number required.
	
	- *Return All Assets At Customer* —  By default, the user is not given the option to return all assets at a customer location during a delivery. This behavior can be changed to give the user that option.
	
	- *Avoid Weekend Default Delivery Dates* —  By default, weekends are ignored when planned delivery dates are calculated so that deliveries aren’t scheduled on weekends. This behavior can be changed to allow planned delivery dates on weekends.

	- *Customer Product Code Filtering*  — By default, all the product codes that have been used at this customer at any time in the past are shown on the Product Search screen, including used empty product codes. The behavior can be changed to not show used empty product codes, or to show the whole product code list.

- **SCANNING** — You can now adjust the size of the scan area for more precise scanning by using the zoom slider. Move the slider left to scan a broader area, right to scan a more focused  area.

- **Continuous Scanning** — This new scanning option for Generic Actions lets you scan and record lists of barcodes/tracking IDs instead of scanning individual assets.  

	While normal TrackAbout scanning doesn’t work if you try scanning two or more barcodes at the same time, Continuous Scan lets you record all the barcodes it can see, and keep recording as you sweep your camera over a list. This can make recording large numbers of assets more efficient.
	
	When enabled, just point your device’s camera at a list of asset barcodes and the scanner will scan in all it sees within the scan area (the orange box at the top of the scanning screen). 
	
	Continue sweeping the camera over barcodes to scan and record them, and tap DONE when finished.
	
	To enable this action, contact TrackAbout Support.


- **New Action: BATCH DELIVERY WITH INTEGRATED ORDER SYNC** — This new action has the same features as Delivery (with Integrated Order Sync) but adds Continuous Scanning to record lists of barcodes/tracking IDs instead of the barcodes attached the assets.

- **MAINTENANCE** — An issue that prevented performing maintenance on multiple assets removed from a lot has been corrected.
 
- **MAINTENANCE** — The warning when adding assets with conflicting maintenance flags has been removed.

- **MAINTENANCE** — Having a Blow Down Reason Code no longer prevents an asset from being scanned in maintenance actions.

- **GENERIC ACTIONS** — Continuous, point-and-scan scanning can now be used in Generic Actions.

- **PUSH NOTIFICATIONS** — An issue that showed “Not Set” instead of the customer name in new order push notifications has been corrected.

- **SYNCING** — Duplicate trip numbers no longer prevent syncing.



## TrackAbout Web
- **Current Inventory** — Two new configuration options are available to change what assets are included in the search if you check Include assets at customers assigned to selected locations. 

	By default, assets at customers assigned to the locations selected in the “Store” field are included in the search regardless of whether the location is a Primary Servicing Location for the customer or not when *Include assets at customers assigned to selected locations* is checked.

	This behavior can be changed to one of the following:

	- Assets At Customers Assigned To Locations As Primary — Include assets at customers assigned to selected locations as primary servicing location.

	- Assets At Customer Delivered From Location — Include assets at customers that were delivered from the selected locations. Not recommended if you’re tracking more than 10,000 assets. 

	If you are interested in changing this behavior from the default, contact TrackAbout Support for a configuration change.


- **Favorites** — System admins can now make a page a favorite for specific user roles instead of a favorite for all users. 

	When adding a page as a system favorite default by clicking System Favorite Defaults, you are prompted to make the page a favorite for everyone by selecting All Roles or make the page a favorite only for users with the selected role(s).  


- **Records** — The option to change the source (origin) location on a Branch Transfer record is now available. (Requires Record Editing Options: Change Location User Access Control (UAC) permission.)

- **Login** — If you are logged out due to inactivity, you are now returned to the page you were on when logging in again. 

- **Dashboard** — An issue that caused the Collision count to be incorrectly displayed on the TrackAbout Dashboard has been fixed.

- **Expiration Date** — An issue that prevented the expiration date from correctly printing on lot labels has been corrected.


## OpenData
- You can now get Escalating Rental tier minimum (TierMinimumDuration) and maximum duration (TierMaximumDuration) through the openData.RentalRates, openData.RentalRatesAudit, openData.RentaBillRateDetails views.

- Truck Number information (TruckId) is now available through the openData.Orders and openData.AllOrders views.


## API
You can now include a parent customer name when creating a new order using the Orders (deliveries.asmx) call, using the new CustomerName element. 
