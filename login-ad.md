# What's New: [October 2025 Release Notes](https://datacor.clickhelp.co/articles/project-trackabout-kb/357-release-notes) 


### Enhancements

-   **TrackAbout Web » Orders » Order Planning** - You can now do order planning (making trips) on maintenance orders just like deliveries. The _Order Planning_ page has been updated to let you select what type of orders are shown in the Order Planning results, Delivery Orders and/or Maintenance Orders. You can also include completed maintenance and delivery orders.
    
-   **TrackAbout Web » List Inventory Audits » Inventory Audit** - You can now export the missing asset and counted asset reports as an Excel (.xls) file directly from the _Inventory Audit - Missing Assets_ or _Inventory Audit - Counted Assets_ page, respectively.
    
-   **TrackAbout Web » List Inventory Audits » Open Audits » Inventory Audit** - The Audit Records table now displays the username of the person who created the record. The table can be sorted by _Date_ or _User Name_.  
    
-   **TrackAbout Mobile 7 » Truck Load Inventory** - Printing a manifest using Truck Load Inventory (standalone or through Delivery w Order Sync) now saves an electronic copy of the manifest in a Manifest Print Record using the new Print Manifest action.
    
    -   Along with the copy of the manifest, the name of the user who printed the manifest, the location where the manifest was printed, and the truck the manifest was for, are also saved as part of the record.
        
    -   Manifest Print Records can be accessed through the web (TrackAbout Web » Regular Maintenance » TrackAbout Activity).
        
-   **TrackAbout Mobile 7 » Dynamic Forms** - We've added pattern matching to dynamic form fields. Users can now scan composite barcodes and automatically extract specific values (like lot numbers) based on configured patterns, eliminating manual data entry errors. To enable this feature, contact TrackAbout Support.  
    
-   **API » GET /analysis/new** - A new API call is now available that returns analysis records from TrackAbout, ordered by the date they were completed. See the TrackAbout Interactive API Reference for details ([/analysis/new](https://trackabout.com/api/docs/#!/analysis/NewAnalysisnew_Get)).  
    
-   **API » GET /orders/maintenance/new** & **GET** **/orders/maintenance/complete/new** - You can now change the default behavior of these calls to allow the system to re-send confirmed maintenance and "maintenance completed" records if they are changed after being confirmed.
    

### Fixes

-   **TrackAbout Web » Regular Maintenance » Verification** - The Verification page no longer shows deleted orders when comparing against New Orders, letting you focus on actual undelivered orders without getting distracted by orders that were already deleted from the system.
    
-   **TrackAbout Web » Regular Maintenance » Sync Problems** - You can now retry failed truck unloads from the Sync Problems page without receiving parsing errors
    
-   **TrackAbout Mobile 7 » Sort Container** - Assets now remain properly contained when other assets are detached from records.
    
-   **TrackAbout Mobile » Delivery** - An issue that intermittently prevented PDFs of HTML delivery receipts from being generated and emailed has been corrected.

