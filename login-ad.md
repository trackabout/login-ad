# What's New: July 2026 Release Notes



### New Features

* **TrackAbout Mobile » Scan Assets:**  TrackAbout Mobile now supports scanning and performing maintenance on containers, **provided the container is empty**. 

  * You can scan a container barcode in a maintenance action to perform maintenance on the container itself.
  * If the container is empty, maintenance proceeds and a record is created for that container.
  * If the container has assets inside, the scan is rejected: "Container must be empty to perform maintenance."
  * Container maintenance records are visible in \*\*Record Search \*\*and reporting, like any other maintenance record.
* **Customer Portal » Asset History Page:** The **Asset History** page lets your customers view their assets and asset activity. Your customer can see assets that they own that are physically at your facility, such as customer-owned cylinders being tested, filled, or serviced before return. This gives them a complete picture of their fleet, not just the assets currently in their possession.
* **Customer Portal » Portal Inventory Page:** The **Portal Inventory** page gives portal users a comprehensive view of their full asset fleet, including assets sitting in-house at the vendor's facility for service. Previously, Customer Portal users could view asset and balance reports for assets at their own locations but had no way to see customer-owned assets being serviced at the vendor's facility, and lacked the grouping and roll-up options available to internal users.
* **TrackAbout Web » Maintenance » AI-Assisted Collision Resolution:** TrackAbout now provides several AI-assisted collision resolution features, which can be enabled for your organization.

  * The **Automatic Resolution** feature lets TrackAbout resolve high-confidence collisions without manual action. When a new collision is created, the system evaluates it in the background; if the recommendation meets your configured confidence threshold, the collision is resolved and removed from the queue. Lower-confidence collisions remain in the queue for manual handling.
  * For any collision the automatic evaluation did not resolve, TrackAbout's **Suggested Resolution** feature displays a TRACKABOUT SUGGESTION panel at the top of the page. The panel displays the AI's recommended action, a confidence score, and a brief explanation of the reasoning.
  * **Note**: We will be clearing out old collision records so your team isn't sorting through stale collisions while trying to resolve current ones. Any collision on a record older than July 1, 2026 will be deleted as part of this release. If you'd like to keep your existing collision history and opt out of this cleanup, please contact TrackAbout Support (**ta-support@datacor.com**) before August 10th and we'll exclude your account.

### Enhancements

* **TrackAbout Mobile » Paused Deliveries:** You can now save a delivery after resuming it from a paused state without being required to add new assets or line items.

  * After resuming a paused delivery, \*\*Save \*\*is available as long as at least one item was entered before or after pausing.
  * All previously scanned assets and line items are available to review and edit before saving.
  * If you resume a delivery and remove all items, saving is blocked until at least one item is entered.
  * If no items were entered at all, saving remains blocked.
* **TrackAbout Mobile » Delivery Summary**: For configured customers, the mobile delivery receipt now includes a QR code encoding the receipt number (series and zero-padded serial, for example 123-0000567). The QR code and the printed receipt number are always identical, produced from a single value so they can never drift apart. Scanning the QR code during digitization supplies the file name automatically. Receipts for customers not configured for this feature are unchanged.

### Bug Fixes

* **TrackAbout Web » Configured Jobs**: We resolved an issue where the Auto Renew Asset Agreements job did not renew agreements in certain scenarios when the job was configured to match the renewed agreement quantity to the customer's current rental balance.
