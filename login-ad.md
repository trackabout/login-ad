# What's New: January 2026 Release Notes



### Enhancements

* **TrackAbout Mobile 7 and Web » Temporary Tags**: TrackAbout now supports Temporary Tags. Temporary Tags provide a controlled way to identify and track assets that are missing permanent barcodes at the time of operational handling. Instead of relying on Not-scanned (NS) assets, users can affix a short-lived temporary barcode, perform a minimal registration, and treat the item as a uniquely tracked asset until it is properly registered with a permanent tag. 

  This feature is designed to improve traceability, reduce exceptions, and preserve asset history during delivery, return, maintenance, and related workflows. Temporary Tags are intentionally constrained. They are valid only within specific actions and must be replaced with a permanent barcode before the asset can participate in workflows that require full registration.
* **TrackAbout Mobile 7 » Warning on Assets Near Expiration Date**: TrackAbout now displays a warning when an asset’s last test date is approaching its test date expiration but is still within a configurable warning period. This warning allows users to plan retesting before the asset becomes invalid, while still permitting the asset to be added or used. This enhancement introduces a non-blocking warning that appears before expiration, based on configurable warning-period rules.
* **TrackAbout Mobile 7 » User Interface (UI) Improvements**: The TrackAbout Mobile 7 application UI has been refreshed to align with Datacor brand standards. Global UI colors have been updated to use the Datacor color palette, ensuring visual consistency with other Datacor products.
* **TrackAbout Web » Customer Portal Users Page**: A new Customer Portal Users page is now available for Customer Service Representatives (CSRs) who manage multiple customers with Customer Portal access. This page provides a single, consolidated view of all Customer Portal users across customers, eliminating the need to open individual customer records to find or manage users. From this page, CSRs can both review and edit Customer Portal users directly.
* **TrackAbout Web » Ownership Type Filter**: The Customer Asset List and Customer Asset Balance reports now include an Ownership Type filter to help you focus on the assets and balances that matter to you. The Ownership Type dropdown list is available with the following options:

  * **All Types (default)**: Includes all assets, including those without a mapped ownership type and not-scanned assets, subject to existing filters.
  * **Company Owned**: Assets with this ownership are excluded. Not-scanned assets are excluded from balance calculations and results.
  * **Non Company Owned**: Assets with this ownership are excluded. Not-scanned assets are excluded from balance calculations and results.

* **TrackAbout Mobile 7 » "Is Fully Tracked" Flag**: TrackAbout now supports bypassing the **Is Fully Tracked** asset family requirement on a per-location basis. Previously, when an asset family was marked as fully tracked, mobile workflows such as Delivery, Picking, and Fill required all assets to be scanned. This blocked locations from going live if some assets were not yet registered. With this update, administrators can configure specific branch locations to bypass the fully tracked requirement.

### Fixes

* **TrackAbout Mobile 7 » Service Notes Field**: The **Service** **Notes** field now displays all of the notes entered into the field without them being cut off by the onscreen keyboard.4
* **TrackAbout Web » Black Hole Finds Report**: Improvements were made on how the Black Hole Finds report was sorting and displaying results.
