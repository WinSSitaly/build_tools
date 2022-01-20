# sync rom
#repo init --depth=1 --no-repo-verify -u git://github.com/LineageOS/android.git -b lineage-15.1 -g default,-mips,-darwin,-notdefault
#git clone https://github.com/WinSSitaly/Local_Manifest.git --depth 1 -b main .repo/local_manifests
#repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

# build rom
# 2021 11 20 fix repo lineage-15.1
source build/envsetup.sh
lunch lineage_i9105p-eng
#update-alternatives --list java
#sudo update-alternatives --config java
#make sepolicy
#make bootimage
#make init
#			fix PKCPS --> https://www.fullstackoasis.com/articles/2019/08/05/how-to-create-a-keystore-file-for-android-development-using-the-command-line-environment/
#
#
#			fix Jack Server
# 
#
#    Remove TLSv1, TLSv1.1 from jdk.tls.disabledAlgorithms in /etc/java-8-openjdk/security/java.security file
#    Restart the jack server: cd ./prebuilts/sdk/tools/ ./jack-admin kill-server ./jack-admin start-server
#
#                        Try increasing heap size with java option '-Xmx<size>
#
export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4g"
./prebuilts/sdk/tools/jack-admin kill-server
./prebuilts/sdk/tools/jack-admin start-server
#
#			fix RIL
#
#./hardware/samsung/Android.mk

#Comment out RIL

#ifeq ($(BOARD_VENDOR),samsung)
#include $(SAM_ROOT)/ril/Android.mk
#endif

#./hardware/ril/Android.mk

#Comment out RIL 

# RIL_PATH := $(call my-dir)

# ifeq ($(RIL_PATH),$(call project-path-for,ril))
# include $(call first-makefiles-under,$(RIL_PATH))
# endif

#
#mmma ./hardware/samsung/ril
#mmma ./hardware/ril 

#mmma ./packages/apps/Bluetooth

#export TZ=Asia/Dhaka #put before last build command
mka bacon
# upload rom (if you don't need to upload multiple files, then you don't need to edit next line)
#rclone copy out/target/product/$(grep unch $CIRRUS_WORKING_DIR/build_rom.sh -m 1 | cut -d ' ' -f 2 | cut -d _ -f 2 | cut -d - -f 1)/*.zip cirrus:$(grep unch $CIRRUS_WORKING_DIR/build_rom.sh -m 1 | cut -d ' ' -f 2 | cut -d _ -f 2 | cut -d - -f 1) -P
