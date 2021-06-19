#prepare the root for device kernel and vendor
cd ..
mkdir ./device/samsung
mkdir ./kernel/samsung
mkdir ./vendor/samsung

pwd

#device
cd device/samsung

pwd

git clone https://github.com/WinSSitaly/android_device_samsung_galaxys2plus-common -b cm-14.1
git clone https://github.com/WinSSitaly/android_device_samsung_i9105p -b cm-14.1
cd ../../
#kernel
cd kernel/samsung

pwd

git clone https://github.com/WinSSitaly/android_kernel_samsung_galaxys2plus-common-5.1 -b  android-7.1
cd ../../
#vendor
cd vendor/samsung

pwd

git clone https://github.com/WinSSitaly/proprietary_vendor_samsung_galaxys2plus-common -b  master
cd ../../

pwd
