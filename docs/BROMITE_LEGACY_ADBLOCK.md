# Legacy Bromite AdBlock engine

For compatibility, in Spectre Browser you will still find the old Bromite adblock.
Since v77 Bromite uses [Chromium subresource filter](https://github.com/chromium/chromium/tree/main/components/subresource_filter) with the full filter lists mentioned in the README.

This engine does not currently support CSS rules; as a result some sites will show ads.

## Update mechanism

The Bromite AdBlock Update Service checks at startup (after 5 seconds) if new Bromite filters are published; if no new filters are available (checked via `Last-Modified` header) then update is skipped.

~~Filters are downloaded from https://www.bromite.org/filters/ and they are published via https://github.com/bromite/filters~~

NOTE October 2024: the domain bromite.org is due to expire, in Spectre Browser it will not be possible to use the indicated url.

## Original Bromite AdBlock engine
The ad-blocking engine of Bromite till v76 was an improved version of the original engine of [NoChromo](https://forum.xda-developers.com/android/apps-games/app-nochromo-wild-browser-appears-t3130776), which is a very simple ad-blocking engine if compared to the others available.
