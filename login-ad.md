# What's New

Authentication Changes
----------------------

TrackAbout has integrated technology from Auth0 to power our authentication system. Auth0 by Okta is the recognized industry leader for enterprise-level authentication and authorization backend services.

Most of the changes that come with this move are behind the scenes, from improved basic login safety and security to the ability for us to soon offer Multi-Factor Authentication and Federated Identity / Single Sign-On. The most significant change users will experience immediately is that they will be prompted separately for their username and password when logging in to TrackAbout Web and TrackAbout Mobile 7. 

However, with this change custom password complexity rules and custom session lengths are no longer supported.

This move also comes with some critical information for your device and network administrators:

Auth0 requires the following URLs for authentication:
* For Production: trackabout.auth0.com and auth.trackabout.com
* For ClientTest: trackabout-test.us.auth0.com
These URLS must be allowed on the appropriate networks and devices for login to work.

If you have devices managed by a mobile device management system, please note that Auth0 must launch a web browser in order to access the above authentication URLs. If the device browser is blocked in a user profile, the user will not be able to log into the TA Mobile 7 app.



#### New TrackAbout Web Login
TrackAbout Web and TrackAbout Mobile 7 users will now be prompted to enter their TrackAbout username or email alone, then after clicking “SIGN IN”, be prompted to enter their password.

1. Enter your TrackAbout E-mail or Username, then click SIGN IN. You'll then be prompted to enter your password.
2. Enter your password and click CONTINUE to sign-in.


#### TrackAbout Mobile 7 Sign-In
Similar to the website sign-in, users will now be prompted to enter their TrackAbout username or email first, then be prompted to enter their password.

Users will only see these changes when their TA Mobile 7 app version updates to 7.339.xxx. TrackAbout employs a staggered rollout for mobile app updates which makes the updates available to users over a period of a few days instead of all at once.

1. Enter your TrackAbout E-mail or Username, then click LOG IN. 
2. You may be prompted to let TrackAbout use Auth0.com to sign in. Tap CONTINUE to allow it.
3. When prompted, enter your password and tap CONTINUE to sign-in to TrackAbout.



#### New TrackAbout Password Complexity Rules

TrackAbout no longer supports or enforces custom password complexity rules. All new or updated TrackAbout account passwords must adhere to the following rules.

*   Passwords must be at least 8 characters
    
*   Passwords can contain ONLY the following characters:
    
    *   Lower case letters (**a**\-**z**)
        
    *   Upper case letters (**A**\-**Z**)
        
    *   Numbers **0** through **9**
        
    *   The special characters ! @ # $ % ^ &
        
*   Users can't reuse any of their last ten passwords
    
*   Passwords can't use the same character more than twice in a row
    
*   Passwords cannot include the user's First or Last name, username, or email address
    
*   Passwords cannot include "trackabout"
    

#### End of Support for Custom Session Lengths

TrackAbout no longer supports custom session lengths.

A session is the amount of time that before you are automatically logged out of a website of app and have to log back in.

Any existing custom session lengths you may have are no longer recognized.


Early Access: Federated Identity / Single Sign-On
-------------------------------------------------

TrackAbout will soon be making Federated Identity / Single Sign-On available to our customers at no additional charge, allowing their TrackAbout users to log in to TrackAbout Web and TrackAbout Mobile 7 (iOS and Android) with their corporate identity credentials.

**SSO** lets users securely and safely log in to different websites and apps using one set of credentials (think username and password). If you've ever used your Google or Apple account to login to an app, you've used SSO.

Before the full rollout, we're looking for a few customer organizations to participate in an early access beta program. As part of the beta, you'll work closely with TrackAbout Support to get Federated Identity SSO up and running — and get in the fast track for enjoying the benefits of Federated Identity SSO.

If your organization has an enterprise identity system and is interested in joining our Federated Identity SSO early access beta, please reach out to TrackAbout Support (support@trackabout.com).


Early Access: Multi-Factor Authentication
-----------------------------------------

TrackAbout will also soon be making Multi-Factor Authentication (MFA) available to our customers at no additional charge. MFA is a security process that requires more than one piece of evidence to verify a user's identity. If you've ever had to enter a TXT code as an extra step to log in to an account, you've used MFA.

**MFA** makes it more difficult for attackers to gain access to accounts, even if they have stolen a user's password.

Before we rollout MFA to everyone, we're looking for customers to help us test as part of an early access beta program.

If your organization is interested in participating in the beta, please contact TrackAbout Support (support@trackabout.com) for more information.


New Features
------------

**TrackAbout Web / Record Details > Change Asset Properties** Choosing a Product Code when changing asset properties is now optional.

*   If you enter a Product Code, the Product Code of all the selected assets is automatically changed.
    
*   If you do not enter a Product Code, the Product Code of the individual assets are not changed.
    


**Delivery (TrackAbout Mobile 7 iOS/Android)** In situations where an asset is on one customer's balance but is scanned on an order for another related customer (that shares the same parent), we've added the option to ask the driver if the asset should be returned or transferred to the second customer.

*   If the assets are being returned, their status is set to empty, as always.
    
*   If the assets are being transferred, their status is not changed.
    

This option can be enabled by request to TrackAbout Support (support@trackabout.com).



**Customer Tracking Portal / TrackAbout Mobile 7** We've added the ability to select a customer in Customer Portal Enabled Generic Actions, and the ability to filter dynamic forms in Customer Portal actions based on customer.


Fixes
-----

**Print Lot Labels (TrackAbout Mobile 7 Android)** Users are no longer erroneously asked for a reprint reason after selecting all remaining labels and then trying to print labels that have not been printed before.

