# Device Tree
git clone https://github.com/poras2001/android_device_xiaomi_sm6250-common -b udc device/xiaomi/sm6250-common

# Vendor Tree
git clone https://github.com/Evolution-X-Miatoll/android_vendor_xiaomi_miatoll.git -b udc vendor/xiaomi/miatoll
git clone https://github.com/Evolution-X-Miatoll/android_vendor_xiaomi_sm6250-common.git -b udc vendor/xiaomi/sm6250-common

# Kernel Tree
git clone https://github.com/clarencelol/kernel_xiaomi_sm6250 kernel/xiaomi/sm6250

#Hardware
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi/tree/lineage-21 -b lineage-21 hardware/xiaomi
# ViPER4AndroidFX
git clone https://github.com/Evolution-X-Miatoll/android_packages_apps_ViPER4AndroidFX.git -b master packages/apps/ViPER4AndroidFX

# Timekeep
git clone https://github.com/LineageOS/android_hardware_sony_timekeep.git -b lineage-21 hardware/sony/timekeep
