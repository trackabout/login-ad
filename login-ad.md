# TrackAbout Test Environment Release Notes (v351)

## TrackAbout Web

-   **Create / Edit User**— The new Clone User option lets you copy one user’s mobile role settings and location permissions to another when creating new user or editing an existing user.
    
    Clone User copies the following from the original user: Location, Language, Web and Mobile Access, Driver Indicator, Working Location, Inventory Location, Route, Mobile Profile, Location Permissions, and Role Permissions.
    
    By default, the option to Clone User is not enabled. The option can be enabled for specific user roles by granting them “clone user” privileges through  _TrackAbout Config_ > _User Access Control_.
    
-   **Current Inventory**  — Detailed results now sort correctly when sorted by  _Days at Location_.
    
-   **Audit Resolution Accounting Adjustment Records**  — An issue that caused the wrong number of surprise DNS finds to be recorded has been corrected.
    
-   **Integration Messages**  — Rapidly clicking "Verify" buttons for record verification or accounting adjustments no longer has the potential to create duplicate entries.
    

## TrackAbout Mobile 7 (Android/iOS)

-   **Collect Customer Based Ownership in Additional Actions**  — Previously available only in  _Add New_  (aka  _Register Asset_), you can now collect ownership in additional actions:
    
    - **Vendor Receive**  — Assign ownership when receiving items from vendors.
    
    - **Add New (Secondary and Non-Key Field modes)**  — Assign ownership when adding new assets.
    
    - **Pack**  — Assign ownership when creating new packs.
    
    - **Make Bundle**  — Assign ownership when registering new bundles.
    
    - **Add Container**  — Assign ownership when registering new containers.
    - **Add Bulk Tank**  — Assign ownership when adding new bulk tanks.
    
    To enable this option, contact TrackAbout Support.
    
-   **MAKE PACK**  — An issue that caused an error when saving while push record message integration is enabled has been corrected.
    

## API

-   **GET /orders/verified/orderNumber** and**GET /orders/verified/new**  — Now returns results faster thanks to optimization.
    
-   **GET /fills/new**  — The response has been updated to return the number of records specified by MaxRows even when the sending fills entered from the website option is disabled.
    
-   **GET /orders/verified/new**  — Delivery records containing two line items with the same Service Product code no longer cause the call to error.
