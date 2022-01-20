cd hardware/samsung
git fetch https://github.com/LineageOS/android_hardware_samsung.git
git cherry-pick 0d4bbaf7f1303c71a78b5e1bbf9fba8addd51062
git status
#entrambi modificati --------> this means that there's a file that was supposed to be modified, but that was modified on our computer from what was expected in the commit
#modificato da loro  --------> 
#entrambi aggiunti   --------> 
#eliminato da loro   --------> this is a third tag you may see, though it's not here. This means that the commit deletes a file which we stil have on our computer
#eliminato da noi    --------> this means that there's a file in the commit that doesn't exist on our computer
#editor ril/libril/Android.mk
#editor ril/libril/include/telephony/ril_commands_vendor.h //deleted with rm
#editor ril/libril/include/telephony/ril_unsol_commands_vendor.h // deleted with rm
#editor ril/libril/ril.cpp
#editor ril/libril/ril_service.cpp //8240
git commit -a
#editor hardware/ril/rild/Android.mk
#editor hardware/ril/reference-ril/Android.mk
