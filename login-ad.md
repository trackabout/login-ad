# [August 2024 Test Server Release Notes](https://supportkb.trackabout.com/Content/Source/RNs/RN-348-Content.htm)


## TrackAbout Mobile 7

**Minimum Operating System Version Requirements for TrackAbout Mobile 7**
    
With this release, the minimum version of operating system supported by TrackAbout Mobile 7 has changed.
    
   * iOS devices must be using iOS 15.8.2 or later.
   * Android devices must be using Android 7.1 or later.
        
TrackAbout Mobile 7 on older operating systems is no longer supported. We recommend keeping iOS and Android devices updated with the latest version of their respective operating systems as soon as they become available for continued support and access to the latest TrackAbout Mobile 7 features.


**Set Expiration Date** — This new TrackAbout Mobile 7 action lets you set the expiration date of product contained in the asset. It was previously only available in TrackAbout Mobile 6.

**Delivery** — You now have the option to collect carrier information in both Delivery (Simple) and Delivery with Integrated Order Sync. This option was previously only available in TrackAbout Mobile 6. To enable Carrier selection, contact [TrackAbout Support](mailto:support@trackabout.com).

**ASSET LOOKUP** — Units of Measure (UOMs) are now displayed for asset attributes like volume and pressure, if appropriate.

**Delivery with Integrated Order Sync** — If using Electronic Guides (EG), Delivery can now automatically ask you to request a new EG from your guide number provisioning system when more assets are returned than were delivered. If a new EG is not immediately available from your provisioning system, you can enter a contingency (temporary) number to use so the delivery can be completed.



## TrackAbout Web

**Favorites** — Users can now favorite TrackAbout Web pages for quick access later. Favorited pages are listed under _Favorites_ in the main menu. 

Individual users can add a page to their _Favorites_ by clicking “Mark as Favorite” when viewing the page. To remove a page they added from their _Favorites_, individual users can click “Remove from Favorites” when viewing the page.

System Administrators can also add pages to everyone’s _Favorites_ as system default favorites by clicking “Mark as System Default Favorite” when viewing the page. System default favorites can be removed from everyone’s _Favorites_ by clicking “Remove from System Default Favorites” when viewing the page.

**Record Detail**  — Assets are no longer all listed on the same page, but in a searchable, paged list.

**Delivery Receipts**  — Lot number for grouped items can now be displayed in emailed delivery receipts. Contact TrackAbout Support for help customizing your delivery receipts.

## OpenData
OpenData now lets you see holder information for assets and containers, and user-entered customer audit names in ungrouped audit records.

**opendata.Assets**
    
**OwnerHolderStr**  — If an asset ownership is marked as 'Customer-owned', this is the internal system ID of that customer. Join to Holders for the ownership customer details.
    
**OwnerHolderName**  — If an asset ownership is marked as 'Customer-owned', this is the Customer ID of that customer. Join to Holders for the ownership customer details.

    
**opendata.ContainerAssets**
    
**OwnerHolderStr**  — If an asset ownership is marked as 'Customer-owned', this is the internal system ID of that customer. Join to Holders for the ownership customer details.
    
**OwnerHolderName**  — If an asset ownership is marked as 'Customer-owned', this is the Customer ID of that customer. Join to Holders for the ownership customer details.


**opendata.CustomerAuditUserEnteredAuditNames**
    
**RecordId**  — System-generated unique ID for the record.
    
**UserEnteredCustAuditName**  — When a user saves a Customer Audit record on the mobile device, they enter a free text name. The admin uses these names to group records into a single Customer Audit.


For the full release notes, see the [TrackAbout Knowledge Base](https://supportkb.trackabout.com/Content/Source/RNs/RN-348-Content.htm).
