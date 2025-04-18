# What's New (April 2025)



## TrackAbout Web

-   **Maintenance Work Orders:** We continue to roll out support for Maintenance Work Orders in conjunction with Service Product Codes.
    
    These features work best when integrated with your ERP/business system using the TrackAbout API, and may require an upcharge. Contact  [TrackAbout Support](mailto:support@trackabout.com)  for more information.
    

-   **Maintenance Orders:** This new action lets you select and record maintenance orders.
    
    -   It operates similarly to Delivery (with Integrated Order Sync).
        
    -   It is designed specifically for tracking maintenance orders, including support for service items and hardgoods.
        
    -   It supports leaving notes on hardgoods.
        
    -   It lets you record when all maintenance work in the order has been completed through a menu item.
        

  

-   **API:** New API endpoints and updates to existing ones are now available for sending Maintenance Work Orders to TrackAbout.
    -   [GET /orders/maintenance/new](https://test.trackabout.com/api/docs/#!/orders/NewMaintenancemaintenancenew_Get)  — For sending data back for individual maintenance records.
        
    -   [POST /actions/maintenance/complete](https://test.trackabout.com/api/docs/#!/actions/CreateCompleteMaintenanceRecordmaintenancecomplete_Post)  — For recording when maintenance is complete (Maintenance Order Completed action).
        
    -   [GET /orders/maintenance/completed/new](https://test.trackabout.com/api/docs/#!/orders/NewMaintenanceCompletemaintenancecompletenew_Get)  — Returns details of all maintenance actions that have been saved as part of the order.
        
    -   [POST /actions/maintenance](https://test.trackabout.com/api/docs/#!/actions/CreateMaintenanceRecordmaintenance_Post)  — New fields are available to support Maintenance Work Orders:  _Order Number_,  _Trip Number_,  _Hard Goods_, and  _Service Items_.  
        

  

## TrackAbout Mobile 7

-   **Delivery (with Integrated Order Sync):**  Delivery counts now print correctly on thermal receipts.
    
-   **Delivery (with Integrated Order Sync):**  The number of digits used for Delivery Counter (CI Type 317) is now configurable. Previously, it was always eight digits. To change the value, contact  [TrackAbout Support](mailto:support@trackabout.com).
    
-   **Delivery (with Integrated Order Sync):**  An issue that prevented delivery receipts from being saved when the customer signature is very small has been corrected.  
    
-   **Delivery (with Integrated Order Sync) Electronic Guides:**  Delivery record messages now show guide numbers for individual assets.
    
-   **Return:**  An issue that prevented the Return action from saving records has been corrected.
