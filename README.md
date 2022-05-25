# SELinux exception for FTL Hyperspace
[The FTL Hyperspace modding API](https://subsetgames.com/forum/viewtopic.php?f=11&t=35095) cannot run under SELinux. This vastly overdocumented SELinux module fixes it by installing an exception for FTL.

To create the module and install the exception:
`make install`

To remove the exception afterwards:
`make uninstall`
