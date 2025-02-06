# What's New (February 2025 Release Notes)


## TrackAbout Web

#### Enhancements

-   **Override Date & Time** — You now have the option to disable the user’s ability to change (override) the current date and time in various places around the app. Contact TrackAbout Support to disable the _Override Date & Time_ option on any of the following:
    
    -   Create Fill Action
        
    -   Edit Asset / Add New Asset
        
    -   Enter Invoice
        
    -   Enter Maintenance
        
    -   Reclassify Assets
        
    -   Register Complaint / Recall/ Block
        
    -   Remove Assets From Lot
        
    -   Set Asset Location
        
    -   Set Ownerships
        
    -   Set Serial Numbers
        
    
-   **Order Cancellation Reason Codes** — This new page lets you manage your order cancellation codes. You can view and edit existing codes and add new ones and activate or deactivate both new and existing codes.
    
    Access to the new page can be set by user permission (_Edit Order Cancellation Reason Codes_ and _View Order Cancellation Reason Codes_).
    

#### Fixes

-   **Production Record** — No longer shows Palletise Empties actions other than the most recent.
    
-   **Customer > Rental Dashboard** — Duplicate balances are no longer erroneously displayed when using Tiered Rental methods.
    

## TrackAbout Mobile 7

#### Enhancements

-   **Locate** — The user’s working location is now automatically selected as the default location. The user can select a different location if needed.
    
-   **Customer Tracking Portal** — You can now give your customers the ability to create and submit orders themselves using the new TrackAbout Mobile 7 _Create Order (Customer Portal)_ action.
    
    Features:
    
    -   Choose Order Priority (Normal, High Urgent)
        
    -   Specify a Suggested Delivery Date
        
    -   Easier line item entry — Filter the list of available products to those used by the customer in the past, or scan an asset to add the product to the order
        
    -   Emails —Your customer receives an order submission confirmation and you receive an email notification when an order is submitted.
        
    -   Order Review — Viewable on the Order Search screens on TrackAbout Web, including information about who submitted the order.
        
    -   Integration — Orders can be integrated back to your business system using the TrackAbout API.
        
    
-   **Delivery (with Integrated Order Sync)**  — The Product Codes used by the customer in recent past orders are now listed when selecting a Product Code while adding a line item (_Add Line Item > Select Product Codes_) or after scanning an unknown, not-listed asset.
    
    By default, all Product Codes (full or empty) are listed for selection, but the user can still search to select a different product code. To list all except empties or to not list any Product Codes, contact TrackAbout Support.
    
-   **Replace Barcode**  — Asset Classification is now shown on the asset details screen.
    
-   **Standard Delivery** now supports HF and UHF RFID scanning, letting you collect asset information from multiple RFID tags at the same time.
    

#### Fixes

-   **Delivery** — Carriers can now be selected without entering a tracking number.
    
-   **Delivery** — Product and Lot number barcodes are now supported on the hard good lot number screen.
    
-   **Replace Barcode** — The asset details screen now shows when a barcode is scanned at the beginning of the process.
    
-   **Simple Batch Delivery** — Scanned assets are now assigned appropriately to the correct line when Continuous Scanning is enabled.
    
-   **Picking** now displays container information. Users can see what assets are in scanned containers as part of _Detail View_.
    

## OpenData

A new field has been added that indicates what the customer’s bracketed rental rate is.

**opendata.Holders**

**BracketedRentalRateTableId** — Indicates the bracketed rental rate for the customer.



