*Updated Thursday, February 2, 2017*
##Hosting Migration February 3 Weekend
Hosting migration to Microsoft Azure **will take place** this coming weekend beginning the evening of Friday, Feb 3 and continuing through the weekend.

For full details, [please read this document](https://meta.trackabout.com/wiki/Azure_Migration_Announcement).

##Security Enhancement - Change to Mobile Device Login for TAMobile 6 Clients
This change applies to clients using PIN-based login with TAMobile 6 on rugged handhelds. If you log into the TrackAbout application on your device, and you are prompted to **"Enter your PIN"**, your authentication process will be changing.

###When will this change take place?
This change will go live in production on **February 14th**.

The change is already available in the Test environment.

###How does the change benefit me?

This change increases security by more frequently checking that users are who they say they are before they are allowed to save records and change data in your TrackAbout system. This change significantly reduces the amount of damage that could be done should a device become lost, stolen, or otherwise fall into the wrong hands.

###How does it work?

If you are connected to the internet when you login, the handheld will talk to TrackAbout's website to verify your information. After that, you'll be able to use the handheld as you do today. 

If you're not connected to a network when you login, you'll still be able to use the handheld like you do today. Once you come back online and do anything that needs to talk to TrackAbout's servers (like save a record), you'll need to enter your PIN so we can verify you. 


###Session Duration

Like when using a web site, a user's handheld session can now time out if the user becomes idle. "Idle" means the user has not done an online action in **30 minutes**. If the user is idle longer than 30 minutes, they will have to enter their PIN again before they can do their next online action. **This session time only applies to online/wireless save actions**. Each time a user saves an action or the handheld talks to the TrackAbout server, the 30 minute session is reset.

###What if I only use actions offline, like Delivery?

The change will not affect you, as your records will be saved locally on the device for later syncing. This change only affects **online save actions**. You'll only be prompted for your PIN when you sync your records to the server at the end of the day.

Should you have any questions or concerns about this new process please feel free to contact TrackAbout Support at [support@trackabout.com](mailto:support@trackabout.com) or 412-269-1872 ext 8.

