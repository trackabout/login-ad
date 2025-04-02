# What's New (March 2025 Release Notes)


## TrackAbout Web

-   **Black Hole Finds** —The new Black Hole Finds Management Report shows you details about the missing assets TrackAbout has found as part of  [Black Hole Recovery](https://datacor.clickhelp.co/articles/project-trackabout-kb/black_hole_recovery).

 

![](https://datacor.clickhelp.co/resources/Storage/project-trackabout-kb/march-2025-test-environment-release-notes/march-2025-test-environment-release-notes-2025-03-11-4.png)  

  

-   **Maintenance Work Orders** — Over the next few releases, we're rolling out support for Maintenance Work Orders in conjunction with Service Product Codes. With this release, you'll be able to setup and manage maintenance service codes used on Maintenance Orders and search Maintenance Work Orders attached to delivery/service records.

 
	These features work best when integrated with your ERP/business system using the TrackAbout API, and may require an upcharge. Contact  [TrackAbout Support](mailto:support@trackabout.com) for more.

-   **Maintenance Service Product Codes**  — You can now create and manage maintenance work order service codes through the Service Product Codes page.
	
	![](https://datacor.clickhelp.co/resources/Storage/project-trackabout-kb/march-2025-test-environment-release-notes/march-2025-test-environment-release-notes-2025-03-13-1.png)

  
	Service Product Codes are used in Maintenance Work Orders and TrackAbout Mobile 7 service deliveries. When creating or editing a Service Product Code, in addition to a name and description, you can select the type of maintenance represented by the code (shown in the screenshot below as _SubAction_).

	![](https://datacor.clickhelp.co/resources/Storage/project-trackabout-kb/march-2025-test-environment-release-notes/march-2025-test-environment-release-notes-2025-03-13-2.png)  

  

-   **Maintenance Work Order Search**  — The newMaintenance Work Order Search_  page lets you search for and view maintenance orders. It is accessible under  _Orders > Maintenance Work Order Search_.

	![](https://datacor.clickhelp.co/resources/Storage/project-trackabout-kb/march-2025-test-environment-release-notes/march-2025-test-environment-release-notes-2025-03-11-1.png)

  

-   **API** — A new API endpoint is available for sending Maintenance Work Orders to TrackAbout. See  [POST /orders/maintenance/batch](https://trackabout.com/api/docs/#!/orders/MaintenanceOrderBatchmaintenancebatch_Post) for details.


-   **Rental**  — When using Escalating Rental, all Not-Scanned assets must have identities, and all returns must be fully reconciled for TrackAbout to correctly calculate how long the assets were with the customer. The new validation checks to make sure both conditions are true and notifies you if they aren't.

-   **Asset Families**  — TrackAbout now keeps an audit trail for additions, updates, and deletions of individual asset families. The audit trail can be viewed by clicking View Audit Trail on the Asset Families List and the Edit Asset Family page.

-   **Records**  — You can now detach duplicate hard goods line items (two or more line items with the same hard good product code).

-   **Sync Problems** — The name of the user who created the record that resulted in the sync problem is now shown for TrackAbout Mobile 7 sync problems.

  

	![](https://datacor.clickhelp.co/resources/Storage/project-trackabout-kb/march-2025-test-environment-release-notes/march-2025-test-environment-release-notes-2025-03-11-3.png)

  

-   **Manifests**  — The user’s location no longer overrides the departing location selected by the person who created the manifest when the manifest is printed.

-   **Rental Dashboard** — An issue that caused duplicate balances to be displayed when using Rental Tiers has been fixed.

-   **TrackAbout Dashboard** — The Accounting Adjustment count shown on the TrackAbout Dashboard now matches the count of accounting adjustments on the Accounting Adjustment page.

  

  

## TrackAbout Mobile 7


-   **Voice Support** — TrackAbout Mobile 7 (Android only) users can now use their voice to select and enter data on select screens throughout the app. With this release, voice support is supported in actions that include Product Code, Asset Family, Ownership, and Owned by Customer selection fields, as well as in Dynamic Forms.
    
      
    
    Voice support for additional selection fields will be added in future releases.
    
      
    
    Wherever voice entry is supported, users will see a microphone icon (![](https://datacor.clickhelp.co/resources/Storage/project-trackabout-kb/march-2025-release-notes/march-2025-release-notes-2025-03-21-4.png)) at the top of the screen.
    
      
    
    ![](https://datacor.clickhelp.co/resources/Storage/project-trackabout-kb/march-2025-release-notes/march-2025-release-notes-2025-03-21-3.png)
    
      
    
    Tapping the icon activates voice mode, which lets the user select a field by speaking its name and then fill the field by voice, as well as tell TrackAbout Mobile to search a list for a specific entry (and automatically select the entry when found).
    
      
      
    
    ![](https://datacor.clickhelp.co/resources/Storage/project-trackabout-kb/march-2025-release-notes/march-2025-release-notes-2025-03-21-2.png)
    
      
    
      
    
    Users can clear the active field by saying "_Clear_" and edit the last value entered by voice on that screen by saying "_Correction_". Users can also toggle voice mode off by tapping the pause icon (![](https://datacor.clickhelp.co/resources/Storage/project-trackabout-kb/march-2025-release-notes/march-2025-release-notes-2025-03-21-5.png)).
    
      
    
    To enable this feature, contact [TrackAbout Support](mailto:support@trackabout.com).




-   **Delivery (with Integrated Order Sync)**  — You can now attach photos when canceling (pre-cancelling) an order.

-   **General**  — Large records (those with more than a thousand records) now save and process faster.

-   **Replace Barcode**  — Now makes sure you can’t reuse a barcode that has been used before for another asset.

-   **Register Asset**  — Rapidly tapping  _Save_  or  _Save and Add More_  can no longer accidentally register the same asset more than once.

  

## OpenData

-   **opendata.RecordWorkOrders** — This new view lets you see the Work Order Number used during filling.
    
