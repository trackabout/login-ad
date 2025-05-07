
# [What's New (May 2025)](https://datacor.clickhelp.co/articles/trackabout-help-center/may-2025-release-notes)


## TrackAbout Web

-   **Maintenance Work Orders:**
    
    We continue the phased rollout out of support for Maintenance Work Orders, which when completed (est. late Q2 2025) will let you track services performed against a work order number, in-house or at a customer.
    
    NOTE: These features work best when integrated with your ERP/business system using the TrackAbout API. Contact  [TrackAbout Support](mailto:support@trackabout.com)  for more information.
    

	As part of this second phase of the rollout, we've added the following new features.

	-   **Maintenance Orders:** This new action will let you select and record maintenance orders, including support for service items and hardgoods. When completed, it will:
    
	    -   Operate similarly to Delivery (with Integrated Order Sync).
        
	    -   Support adding notes to hardgood line items.
        
	    -   Let you mark the work order has been completed.
        

	-   **API:** New API endpoints and updates to existing ones are now available for sending Maintenance Work Orders to TrackAbout.
    
	    -   [GET /orders/maintenance/new](https://trackabout.com/api/docs/#!/orders/NewMaintenancemaintenancenew_Get)  — For retrieving data for individual maintenance records.
        
	    -   [GET /orders/maintenance/completed/new](https://trackabout.com/api/docs/#!/orders/NewMaintenanceCompletemaintenancecompletenew_Get)  — Returns details of all maintenance actions that have been saved as part of the order.
        
	    -   [POST /actions/maintenance](https://trackabout.com/api/docs/#!/actions/CreateMaintenanceRecordmaintenance_Post)  — New fields are available to support Maintenance Work Orders:  _Order Number_,  _Trip Number_,  _Hard Goods_, and  _Service Items_.  
        

  

## TrackAbout Mobile 7

-   **Delivery (with Integrated Order Sync)**
    
    -   The number of digits used for Delivery Counter is now configurable. Previously, it was always eight digits. To change the value, contact [TrackAbout Support](mailto:support@trackabout.com).
    -   An issue that prevented delivery receipts from being saved when the customer signature is very small has been corrected.  
        
    -   Delivery record messages now show Electronic Guide numbers for individual assets.
        
    -   Split deliveries no longer show duplicate photos in TrackAbout Web.
        
-   **Return Only:** An issue that prevented the Return Only action from saving records has been corrected

