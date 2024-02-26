[![interaxions](https://supportkb.trackabout.com/Content/Resources/Images/IAX%202024%20graphic.png)](https://datacor.swoogo.com/interaxions24/begin)

# What's New for January 2024

## TrackAbout Mobile 7
* **Add New** — We've added extra validation steps to help prevent users from accidentally creating an asset that has the same serial number as an existing asset, even if the user edits the serial number they entered during the registration process.
* **Delivery / Service** — Comments in orders are now collapsible.
* **New Automatic Conversion on Scan Options**
	* You now have the option to not automatically translate the letter "O" (either upper or lowercase) into a zero when scanning tracking and serial number barcodes. To enable this option, please contact TrackAbout support at support@trackabout.com.
	* You now have the option to specify which characters should not be automatically removed from serial number barcodes when scanned. By default, only dash characters "-" are not automatically removed during scanning. To enable this option, please contact TrackAbout support at support@trackabout.com.
	* You now have the option to stop TrackAbout Mobile 7 from automatically convert barcodes and serial numbers to uppercase when scanned. To enable this option, please contact TrackAbout support at support@trackabout.com.
* **Maintenance** — The Maintenance action now allows empty bundles and packs.

## TrackAbout Web
* **Rental** — The option to show a Delivery Invoice Number on the Asset Balance section of a rental bill is now available. 
The REST API calls GET /rental/bills/readyforpickup and GET /rental/bills/readyforpickup/new also now include support for Delivery Invoice Number (delivoeryInvoiceNumber) as a new field in the assetBalances element.
* **Branch Transfer Records** — The Attach/Detach Hard Goods option is now available when viewing branch transfer records.

## API
* **REST API** — You can now specify a Carrier Name and Carrier Tax ID when creating orders using the TrackAbout REST API calls /orders/pending/batch, /orders/pending/{OrderNumber}, /orders/verified/new, /orders/verified, and /orders/verified/{OrderNumber}.
