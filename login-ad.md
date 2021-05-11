<div align="center">
    <img width="100%" src="https://lh3.googleusercontent.com/JUMbamFu9ZQjZ0ozsBze6QsBj_yetbHJmXZLPCG4qz7G2rnR1gIsWIQ1VnXJI0glxB_L7k4NVmFRWiWn4a2HK7-deDTTeNeovROfjdpbzSb-40LengiouCmdawWEJ45lPSMVEnC2" alt="Release Notes"/>
</div>
<br />
TrackAbout Release Notes - First Quarter 2021

TrackAbout regularly puts out new features and improves existing ones. Here is a brief summary of the latest changes to expect in the release expected to be in production within the next month:

**Items may need subscriptions through separate modules*

### New TrackAbout TAM6 (Windows) Features
#### Collect Trip Number for POD Milk Run orders
In the previous version of TAM6, if an order was manually entered into the POD module during delivery, the order could not be associated with a trip. This made trip reconciliation difficult as the manually entered order would be orphaned and only viewable using the Verification screen. Now, when an order is manually entered, the driver can now select the trip to which the new order should be assigned.

### New TrackAbout TAM7 (Android / iOS) Features
#### Wireless Alerts during Asset Lookup             
TrackAbout has ported TAM6 functionality to display wireless alert notes on asset lookups and at the end of actions.  

#### Collect Trip Number for POD Milk Run orders
During a POD delivery, if an order were manually entered on a TAM6 or TAM6 device, the order could not be associated with a trip, making trip reconciliation difficult, as the manually entered order would be orphaned and only viewable using the Verification screen.  When manually entered an order, the driver can now select the trip the new order should be assigned to.

#### Vendor Receive: Support Both SN and Volume Collection
TrackAbout has enhanced the Vendor Receive action to be able to collect both serial number and volume information for products that require volume to be collected during delivery/receipt.

#### Sort Trip : Warn Users that the Picked Asset has Already been Delivered
Prior to this release during the Sort Trip/Picking action, if a user continues to add assets to a trip for loading later on a truck when some previously picked assets have already been delivered, TrackAbout recorded delivered assets as being brought back to the plant.  Now, the user is warned and can remove assets that have already been delivered from the trip prior to closing out a Sort Trip action.

#### Bundle Registration
This action is used for Bundle Registration in which frame information is gathered along with the number of cylinders in the bundle/pack. However, there is no unique tracking information entered for the cylinders in the bundle.
This process is now available for our clients using TAM7 on Android and iOS.

#### POD: On View Details Screen, Make It Possible To Scan To Jump to an Asset for Deletion
TrackAbout has enhanced both Simple and POD Delivery View Details screens so that when an asset needs to be deleted, instead of having to find the line where the asset was scanned, a driver can now scan to "jump to" the asset that needs to be deleted.

#### Add Lot Number Support to the AWS POD Email Receipt Template
TrackAbout has enhanced the POD delivery receipt email to support the addition of lot numbers for uniquely tagged assets.

#### Expanded Language Support
TrackAbout has added support for the following languages in TAM7:
<ul>
<li> Japanese </li>
<li> Portuguese </li>
<li> Updated existing Spanish translations </li>
</ul>

#### Vendor Receive Now Supports Both Volume and Serial Number Collection
Previously in TAM6, the Vendor Receive action allowed you to collect either the Serial Number or Volume. With the expanded screen space  in TAM7, we can now collect both SN and volume.

#### Fill with Work Order, Select Work Orders Screen (Android)
TrackAbout has ported the TAM6 functionality that allows operators to fill assets when using work orders. Filling via work order is now enabled only through a configuration for TAM7 and does not require a dedicated action as it did in TAM6. Additionally, Not Scanned (NS) assets can also be added by product code and quantity for work order fills.
For additional information about the work order fill process, please contact TrackAbout Support.

#### New Device Certified: Honeywell EDA 50
TrackAbout has certified the Honeywell EDA 50 device for use with TAM7.

### TrackAbout Website Changes
#### Update Record Summary / Details page to how NS Lot Numbers for Fill
TrackAbout now supports the filling of assets by product code and quantity on all types of filling in TAM7:  Fill with Work Order, Filling by Rack (operator fills by selecting a manifold and asset family), and Simple Fill (operator fills by selecting each product code being filled).
In addition, TrackAbout has updated fill records to reflect those assets filled by product code and quantity.  TrackAbout supports filling both tagged and non-tagged assets at the same time:  this is helpful when filling both company-owned and customer-owned assets at the same time; when you've chosen to not tag customer-owned assets.

#### Update Lot Search to Retrieve NS Lot Numbers
Lot Search reporting has also been updated to generally include NS assets, which will show the deprecation of NS assets when they are delivered.

#### Bulk Load Users Tool Enhancements
TrackAbout has made enhancements to our bulk loading tool for bulk management of both Internal Users and Location Restricted Users, including:
<ul>
    <li> Setting up New Users </li>
    <li> Disabling / Enabling Existing Users </li>
    <li> Updating Primary Locations for Users </li>
    <li> Updating Restricted Locations for Users </li>
    <li> Update Mobile Roles for Users </li>
    <li> Bulk send Welcome email to establish credentials </li>
    <li> Include images in the Welcome email used to establish login credentials </li>
    <li> Adding limited visual cues to indicate which environment a user is logged into (Test vs Production) on TAM7 </li>
</ul>

#### Custom Asset Info Options Loader
When new options need to be recorded for assets in existing TrackAbout actions, Support has always had to modify these option lists which can cause delays to updating actions.
TrackAbout has created a customer-facing tool so that customers can now update their option lists for actions to add new options, and customize what options can be shown. For example, if there is a new valve that needs to be added as an option for selection during the Add New/Registration process, an administrator can go to the Custom Asset Info (CAI) info loader page to add the new option.
For more information on how this page works, please contact TrackAbout Support.

#### Audit Trail for TrackAbout Users Creation/Update/Deletion
TrackAbout now displays audit trails for changes that were made to internal users from the Internal Users page. TrackAbout now logs changes for the following:
<ul>
    <li> Login name </li>
    <li> Email address </li>
    <li> Location Access </li>
    <li> Roles </li>
    <li> Change Type (Created/Deleted) </li>
    <li> Default Location </li>
    <li> Password </li>
</ul>
To access all changes for users, click on "View Audit Trail" in the top right hand corner of the internal users page.

### TrackAbout API Changes
#### Adding Shelf Life Days to Product Code API
TrackAbout has made several enhancements to APIs over the last few releases:
Being able to bulk define product shelf lifes by product code in the below APIs.  Shelf life is defined as the number of days a product is valid after fill.    
<ul>
    <li> POST /classifications/productCodes/batch </li>
    <li> POST /classifications/productCodes </li>
    <li> PATCH /classifications/productCodes/{TId} </li>  
</ul>

TrackAbout now also includes trip number information in the verified orders APIs, so that orders that do not yet exist in the accounting system can be associated with a trip number.  
Enhanced APIs:  
<ul>
    <li> GET /orders/verified </li>
    <li> GET /orders/verified/{OrderNumber} GET /orders/verified/new </li>
</ul>

#### Rental Bill API Improvement
TrackAbout has improved the Rental Bill API so that it runs significantly faster.

### OpenData Enhancements
#### Add Holder Servicing Locations to OpenData
TrackAbout has made the following enhancements to OpenData:
<ul>
<li> Customer (Holder) servicing locations have been added. For reference, a customer's servicing location is typically the primary plant or warehouse that supplies the customer with product. </li>
<li> Create a single OpenData view that shows which users are tied to which devices and what version of our software is being run. </li>
</ul>

If you would like to add any of these new features or have questions about how to use them please contact your TrackAbout Support team at [support@trackabout.com](mailto:support@trackabout.com)
