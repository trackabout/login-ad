# [March 2025 Test Environment Release Notes](https://datacor.clickhelp.co/articles/#!project-trackabout-kb/march-2025-test-environment-release-notes)


## TrackAbout Web

-   **Black Hole Finds** — The new Black Hole Finds Management Report shows you details about the missing assets TrackAbout has found as part of Black Hole Recovery.

    -   **Maintenance Work Orders** — Over the next few releases, we're rolling out support for Maintenance Work Orders in conjunction with Service Product Codes. With this release, you'll be able to setup and manage maintenance service codes used on Maintenance Orders and search Maintenance Work Orders attached to delivery/service records. Note: These features work best when integrated with your ERP/business system using the TrackAbout API, and may require an upcharge. Contact [TrackAbout Support](mailto:support@trackabout.com) for more.

    -   **Maintenance Service Product Codes** — You can now create and manage maintenance work order service codes through the Service Product Codes page. Service Product Codes are used in Maintenance Work Orders and TrackAbout Mobile 7 service deliveries. When creating or editing a Service Product Code, in addition to a name and description, you can select the type of maintenance represented by the code.

    -   **Maintenance Work Order Search** — The new _Maintenance Work Order Search_ page lets you search for and view maintenance orders. It is accessible under _Orders > Maintenance Work Order Search_. 

    -   **API** — A new API endpoint is available for sending Maintenance Work Orders to TrackAbout. See [POST /orders/maintenance/batch](https://test.trackabout.com/api/docs/#!/orders/MaintenanceOrderBatchmaintenancebatch_Post) for details.

-   **Rental** — When using Escalating Rental, all Not-Scanned assets must have identities, and all returns must be fully reconciled for TrackAbout to correctly calculate how long the assets were with the customer. The new validation checks to make sure both conditions are true and notifies you if they aren't.

-   **Asset Families** — TrackAbout now keeps an audit trail for additions, updates, and deletions of individual asset families. The audit trail can be viewed by clicking View Audit Trail on the Asset Families List and the Edit Asset Family page.

-   **Records** — You can now detach duplicate hard goods line items (two or more line items with the same hard good product code).

-   **Sync Problems** — The name of the user who created the record that resulted in the sync problem is now shown for TrackAbout Mobile 7 sync proble

-   **Manifests** — The user’s location no longer overrides the departing location selected by the person who created the manifest when the manifest is printed.

-   **Rental Dashboard** — An issue that caused duplicate balances to be displayed when using Rental Tiers has been fixed.

-   **TrackAbout Dashboard** — The Accounting Adjustment count shown on the TrackAbout Dashboard now matches the count of accounting adjustments on the Accounting Adjustment page.

  
## TrackAbout Mobile 7

-   **Delivery (with Integrated Order Sync)** — You can now attach photos when canceling (pre-cancelling) an order.

-   **General** — Large records (those with more than a thousand records) now save and process faster.

-   **Replace Barcode** — Now makes sure you can’t reuse a barcode that has been used before for another asset.

-   **Register Asset** — Rapidly tapping _Save_ or _Save and Add More_ can no longer accidentally register the same asset more than once.

  
## OpenData
-   **opendata.RecordWorkOrders** — This new view lets you see the Work Order Number used during filling.
    
  
