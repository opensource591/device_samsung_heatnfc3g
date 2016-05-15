android_device_heatnfc3g
======================

Device tree for Galaxy Ace Style Duos SM-G310HN (1 SIM)

<b>HOW TO COMPILE ?</b>

<b>TYPE THIS COMMANDS :- </b>

`cd cm-11.0`

`mkdir .repo/local_manifests`

`gedit .repo/local_manifests/heatnfc3g.xml `

<b>PASTE THIS INSIDE THAT FILE :- </b>


```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<project path="device/samsung/heatnfc3g" name="opensource5921/android_device_heatnfc3g" revision="cm-11.0" />
<!--<project path="packages/apps/FM2" name="legaCyMod/android_packages_apps_FM2" revision="cm-11.0" />-->
<project path="kernel/samsung/heatnfc3g" name="mac12m99/kernel_samsung_heatnfc3g" revision="master" />
<project path="hardware/samsung/" name="CyanogenMod/android_hardware_samsung" revision="cm-11.0" />
<project path="vendor/samsung/heatnfc3g" name="opensource591/vendor_samsung_heatnfc3g" revision="master" />
</manifest>
```

`. build/envsetup.sh `

`patch_fix`  // TO MAKE ROM STABLE

`apps2sd` // If you want apps2sd feature

`heatnfc3g `

<b>FLASH THE ROM AND ENJOY!</b>
