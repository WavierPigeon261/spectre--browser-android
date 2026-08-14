# Spectre Browser PRIVACY POLICY

## SUMMARY
This document describes the features in Spectre Browser that communicate with third-party services: some of these settings are active by default but can be easy deactivated via the user interface.
-	Automatic browser update check (disabled by default)
<br>Spectre Browser check address “https://github.com/uazo/Spectre Browser/releases/download” once a day

-	Download of selected adblock subscription (enabled by default)
<br>Spectre Browser check user-selected urls in the adblock section once a day. 
By default, some subscriptions from https://easylist-downloads.adblockplus.org are automatically selected.

Please note that all browsing data are recorded on disk and that access protection to such data is delegated to the operating system. In windows, only the cookie value information is encrypted by default through the api provided by Windows. Exactly like chromium, all other information is recorded in unencrypted mode.

## BY FEATURE

Below is the list of features you can find in Spectre Browser, compared to those exposed by default in chromium.

#### OMNIBOX
Spectre Browser do not send any data to your default search engine by default, but you can enable suggestions query by ui. They can be turned on by checking "Improve search suggestion" under ""Privacy and Security" of Spectre Browser settings.

Please note that autocomplete, when activated, is on also for incognito windows.

When on, Spectre Browser sends the text you've typed into the omnibox to your default search engine. Spectre Browser will not send any signal to your default search engine when you focus in the omnibox, do not send the URL of the currently displayed search engine results page but your IP address and certain cookies are also sent to your default search engine with all requests.

Spectre Browser do not preconnect to your default search engine in the background.

If Spectre Browser determines that your typing may contain sensitive information, such as authentication credentials, local file names, or URL data that is normally encrypted, it will not send the typed text.

If Google is your default search engine, when you select one of the omnibox suggestions, Spectre Browser sends your original search query, the suggestion you selected, and the position of the suggestion back to Google. You can change that behavior by changing the default search engine with “Google Eng”.
"X-Geo HTTP" request header is never sent even if you authorise the use of geolocalisation in the device.

Please note that if you use a search provider as your default search engine, queries are sent and recorded according to that provider's privacy policy.

Spectre Browser never sends the information to your DNS provider if you enter a single word. For example, if your router has the host name 'router' and you type 'router' in the omnibox, you will never be able to browse https://router/ but only search for the word 'router' with your default search provider.

#### NETWORKS PREDICTIONS
The prediction service may initiate actions such as DNS prefetching, TCP and TLS preconnection, and prefetching of web pages.
Network predictions are disabled by default and cannot be reactivated. in detail, all these features are disabled by default:
-	Browser-initiated prefetch, like omnibox prefetch
-	Webpage/AMP/Custom tabs prefetching
-	Tunneled prefetch through a CONNECT proxy operated by external organization

#### NEW TAB PAGE
Spectre Browser's New Tab page displays certain sites preset by the Chromium team by default.

Spectre Browser is neither an affiliate nor receives any remuneration for the links displayed.

The list of presented sites is modified according to your browsing history and favorites and is recorded locally and never sent. If you disable the saving of the navigation history, this list will not be automatically updated.

Spectre Browser never attempts to update this list with suggestions nor to modify the content of the NTP page in any way with external sources, not even if you modify the search engine.

#### TOUCH TO SEARCH
Touch to Search is disabled and cannot be re-enabled.

#### SEARCH WITH GOOGLE LENS
On Android, if Google is selected as the default search engine, touching & holding on an image will present you with an option to initiate a search with Google Lens.
A tap on that menu item will redirect you to the image search page and the image bytes of the selected image will be sent to the website. No other information is sent.

#### SAFE BROWSING PROTECTION
Safe Browsing protection is disabled and cannot be re-enabled.

#### UNWANTED SOFTWARE PROTECTION
Unwanted software protection in Windows is disabled and cannot be re-enabled.

#### LOG AND CRASH UPLOAD
Log and crash upload are disabled and cannot be re-enabled. Crash information is recorded locally and accessible via chrome://crashes but is not sent outside the device.

#### OFFLINE INDICATOR
Spectre Browser checks for Internet access by sending a request to RIPE www.ripe.net, NCC k.root-servers.net (2001:7fd::1 anycasted) in the event of problems to determine whether you’re offline and display an offline indicator.

#### SOFTWARE UPDATES
In Spectre Browser for Android there is a feature to check for automatic updates, but it is deactivated by default. In the other platforms, no automatic check for browser updates is currently active.

On desktop platforms it is possible to activate the automatic update of extensions, which is deactivated by default. Please note that the extension update sends the list of extensions installed on the device to the Google servers.

In Android, the installation of PWAs is disabled and cannot be re-enabled.

Spectre Browser does not download or update any google components.

Spectre Browser, by default, downloads from www.Spectre Browser.org a zip containing the fonts it uses for anti-fingerpriting protection. If the zip has already been downloaded, no connection is made again.
In www.Spectre Browser.org, no log is active.

#### NETWORK TIME
Spectre Browser never uses network time to verify SSL certificates, and no call is made to verify it.

#### COUNTING INSTALLATIONS
I do not know the number of installations made by users, nor is any information about it sent outside the application: no unique token is built or sent. RLZ is disabled and cannot be re-enabled.

#### USAGE STATISTICS
Spectre Browser does not generate any usage statistics nor is there any built-in AI software that clusters your behavior.

#### SURVEYS IN Spectre Browser
Surveys in Spectre Browser is disabled and cannot be re-enabled.

#### SUGGESTIONS FOR SPELLING ERRORS
Suggestions for spelling errors is disabled and cannot be re-enabled.

#### TRANSLATE
Translate is disabled and cannot be re-enabled.

#### IMAGE DESCRIPTIONS FOR SCREEN READER USERS
Image Descriptions for screen reader users is disabled and cannot be re-enabled.

#### BROWSER SIGN IN AND SYNC
Browser Sign In and sync is disabled and cannot be re-enabled. X-Chrome-Connected header is never sent. Google FLOC and Privacy Sandbox are disabled and cannot be re-enabled. No special api is granted to account.google.com

#### AUTOFILL AND PASSWORD MANAGEMENT
Autofill and Password Management are only local feature: Spectre Browser does not send any information externally.

In android, Spectre Browser uses the native Autofill framework by default, effectively sending the url of the page you are browsing to the application you chose. Sending this information is mandatory to the protocol. You can turn off support through settings.

#### PAYMENTS
Spectre Browser supports the PaymentRequest API (disabled by default) by allowing you to pay for purchases with credit cards. Information is not shared with the merchant until you agree.

#### GEOLOCATION
Spectre Browser supports the Geolocation API, which provides access to fine-grained user location information with your consent. By default, Spectre Browser will request your permission when a web page asks for your location information, and does not send any location information to the web page unless you explicitly consent.

In settings, by clicking “Site Settings” and scrolling to the “Location” section, you can choose to allow all sites to receive your location information, have Spectre Browser ask you every time (the default), or block all sites from receiving your location information. You can also configure exceptions for specific web sites.

In the Android version of Spectre Browser, your default search engine never receives your location when you conduct a search.

#### SPEECH TO TEXT
Speech to text is disabled and cannot be re-enabled.

#### SSL CERTIFICATE REPORTING
SSL certificate reporting is disabled and cannot be re-enabled.

#### INSTALLED APPLICATIONS AND EXTENSIONS
Spectre Browser for desktop allows the installation of extensions manually or via the Chrome Web Store. Extensions that you choose to install can request access to additional capabilities. These additional permissions may change the way your data is collected and shared, as extensions and applications might have access to data regarding the websites you visit, and might be capable of monitoring or modifying your interactions with the web.

Note also that interactions with and data collected by these third-party applications and extensions are governed by their own privacy policies, not Spectre Browser's privacy policy.

#### PUSH MESSAGING
Push messaging is disabled and cannot be re-enabled

#### CUSTOM TABS
Custom tabs are disabled by default but you can re-enable.

On Android devices, an app developer may use a Custom Tab to show web content when you click on a URL from their app. A Custom Tab may look different from a regular tab, for example it may have app-specified visual style, and the absence of an editable URL bar. Despite the different visual style a Custom Tab may have, the data sent and received in the Custom Tab, such as cookies, saved passwords and browsing history function the same way they do in a normal Spectre Browser tab. 

With Spectre Browser Custom Tabs, an Android app developer cannot specify custom actions in the browser toolbar and overflow menu that are relevant to their app, for example,"share", “save page”, “copy URL” and the exchange of information between the application and the website is inhibited.

An application cannot request Spectre Browser to pre-render a given URL in the background.

Trusted Web Activities (TWA) are not supported.

#### CONTINUE WHERE YOU LEFT OFF
By default, Spectre Browser displays the list of tabs opened in the previous session: this feature effectively extends a browsing session across restarts. You can deactivate this behaviour in the settings. Remember that the list of open tabs is on disk and not encrypted.

In android it is possible to activate 'Open NTP at startup' (enabled by default) which minimises this behaviour by not automatically loading any tabs at startup. Also in android, it is possible to disable the saving of screenshots of sites, used in tab view mode.

It is also possible to configure Spectre Browser to delete all information, including the browser history, when reopening (or closing, on the desktop) the browser.

#### CHROME VARIATIONS
Chrome Variations is disabled and cannot be re-enabled

#### MEDIA LICENSES AND DRM PROVISIONING
Media licenses and MediaDrm provisioning is disabled and cannot be re-enabled

#### DATA SAVER
Data Saver is disabled and cannot be re-enabled. You can enable only the use of “Save-Data” http header.

#### INCOGNITO MODE
Incognito mode in Spectre Browser is a temporary only-in-memory browsing mode. It ensures that you don’t leave browsing history and cookies on your device. The browsing history and cookies are deleted only once you have closed the last incognito window. Incognito mode cannot make you invisible on the internet. Websites that you navigate to may record your visits. Going incognito doesn’t hide your browsing from your employer, your internet service provider, or the websites you visit.

#### SECURITY KEY
Security Key are actually disabled by default.

#### BLUETOOTH
Spectre Browser supports the Web Bluetooth API, which provides websites with access to nearby Bluetooth Low Energy devices with your consent.

Spectre Browser does not let any page communicate with a device unless you explicitly consent. When a web page asks to pair with a device, Spectre Browser will ask you to choose which device the web page should access, if any. Selecting a device for one page does not give other pages access to the device you have chosen, and does not allow that page to access other devices. Currently, permission for a page to communicate with a device is usually revoked when the page is reloaded, and is always revoked when Spectre Browser is restarted.

#### Spectre Browser DATA THAT ANDROID SENDS TO GOOGLE
In Spectre Browser all references to the google play service api are removed, so no browsing information is sent directly to Google. It is however possible that some information can be retrieved via other android APIs. In order to minimize that risk, you can use of alternative OSs.
