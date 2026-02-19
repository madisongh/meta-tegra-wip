SRC_REPO_NV_OOT = "gitlab.com/nvidia/nv-tegra/linux-nv-oot.git;protocol=https"
SRC_REPO_NV_ETHERNETRM = "gitlab.com/nvidia/nv-tegra/kernel/nvethernetrm.git;protocol=https"
SRC_REPO_NV_KERNEL_DISPLAY = "gitlab.com/nvidia/nv-tegra/tegra/kernel-src/nv-kernel-display-driver.git;protocol=https"
SRC_REPO_HWPM = "gitlab.com/nvidia/nv-tegra/linux-hwpm.git;protocol=https"
SRC_REPO_NVGPU = "gitlab.com/nvidia/nv-tegra/linux-nvgpu.git;protocol=https"
SRC_REPO_T264_DTS = "gitlab.com/nvidia/nv-tegra/device/hardware/nvidia/t264-public-dts.git;protocol=https"
SRC_REPO_T23X_DTS = "gitlab.com/nvidia/nv-tegra/device/hardware/nvidia/t23x-public-dts.git;protocol=https"
SRC_REPO_TEGRA_DTS = "gitlab.com/nvidia/nv-tegra/device/hardware/nvidia/tegra-public-dts.git;protocol=https"
SRC_REPO_KERNEL_DTS = "gitlab.com/nvidia/nv-tegra/linux/kernel-devicetree.git;protocol=https"

SRC_URI = " \
    git://${SRC_REPO_NV_OOT};branch=${SRCBRANCH};name=nvidia-oot;destsuffix=${BPN}-${PV}/nvidia-oot \
    git://${SRC_REPO_NV_ETHERNETRM};branch=${SRCBRANCH};name=nvethernetrm;destsuffix=${BPN}-${PV}/nvethernetrm \
    git://${SRC_REPO_NV_KERNEL_DISPLAY};branch=${SRCBRANCH};name=nvdisplay;destsuffix=${BPN}-${PV}/nvdisplay \
    git://${SRC_REPO_HWPM};branch=${SRCBRANCH};name=hwpm;destsuffix=${BPN}-${PV}/hwpm \
    git://${SRC_REPO_NVGPU};branch=${SRCBRANCH};name=nvgpu;destsuffix=${BPN}-${PV}/nvgpu \
    git://${SRC_REPO_T23X_DTS};branch=${SRCBRANCH};name=t23x-dts;destsuffix=${BPN}-${PV}/hardware/nvidia/t23x/nv-public \
    git://${SRC_REPO_TEGRA_DTS};branch=${SRCBRANCH};name=tegra-dts;destsuffix=${BPN}-${PV}/hardware/nvidia/tegra/nv-public \
    git://${SRC_REPO_KERNEL_DTS};branch=${SRCBRANCH};name=kernel-devicetree;destsuffix=${BPN}-${PV}/kernel-devicetree \
"

EXTRA_PATCHES += " \
    file://linux-hwpm/0001-tegra-hwpm-Fix-build-for-Linux-v6.13.patch;patchdir=hwpm \
    file://linux-nv-oot/0003-drivers-correct-parameter-of-macro-MODULE_IMPORT_NS.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0004-drivers-timer-use-correct-timer-interfaces.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0005-drivers-gpio-add-return-value-for-callback-set-of-st.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0006-drivers-virt-add-constify-attribute-for-struct-bin_a.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0007-drivers-tegra-replace-devm_gpio_request-with-devm_gp.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0008-drivers-virt-replace-work_on_cpu_safe-with-work_on_c.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0009-drivers-video-define-DMA-action-direction-explicitly.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0010-drivers-crypto-add-priv-pointer-in-context-struct-to.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0011-drivers-nvmap-calculate-page-address-explicitly.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0012-ASoC-tegra-add-necessary-min-parameter-to-SOC_SINGLE.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0013-sound-soc-set-Codec-Stream-Card-name-explicitly.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0014-crypto-tegra-Remove-an-incorrect-iommu_fwspec_free-c.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0015-sound-soc-use-reasonable-SND_SOC_DAIFMT_CBx_CFx.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0016-drivers-ufs-constify-the-third-parameter-of-ufs_tegr.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0017-sound-soc-replace-idle_bias_off-with-idle_bias.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0018-drivers-drm-use-video-aperture-helpers-explicitly.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0019-drivers-nvmap-use-file-reference-API-to-replace-atom.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0020-drivers-realtek-bt-replace-set_bit-with-hci_set_quir.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0021-drivers-ethernet-remove-explicit-operation-of-page-i.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0022-drivers-bluedroid-use-correct-wakeup-source-interfac.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0023-drivers-drm-use-mainline-drm_dp_link_power_up-down-A.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0024-drivers-mttcan-remove-constify-attribute-for-ttcan_r.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0025-drivers-mttcan-switch-to-use-members-in-struct-data_.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0026-drivers-drm-fb-add-format-info-parameter-to-tegra-fb.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0027-drivers-nvmap-remove-cache_sgt_mapping.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0028-sound-soc-replace-of_property_read_bool-with-of_prop.patch;patchdir=nvidia-oot \
    file://linux-nv-oot/0029-rtk_btusb-update-rtk_coex-for-compatibility-with-6.1.patch;patchdir=nvidia-oot \
    file://linux-nvgpu/0001-nvgpu-Update-MODULE_IMPORT_NS-macro-arguemnt-to-stri.patch;patchdir=nvgpu \
    file://linux-nvgpu/0002-nvgpu-Update-hrtimer_init-to-hrtimer_setup.patch;patchdir=nvgpu \
    file://nv-kernel-display-driver/0003-nvdisplay-kernel-open-correct-parameter-of-macro-MOD.patch;patchdir=nvdisplay \
    file://nv-kernel-display-driver/0004-nvdisplay-Kbuild-add-parameters-into-XXX_CFLAGS.patch;patchdir=nvdisplay \
    file://nv-kernel-display-driver/0005-nvdisplay-timer-replace-hrtimer_init-with-hrtimer_se.patch;patchdir=nvdisplay \
    file://nv-kernel-display-driver/0006-nvdisplay-nvidia-check-importer-operations-directly.patch;patchdir=nvdisplay \
    file://nv-kernel-display-driver/0007-nvdisplay-timer-replace-del_timer_sync-with-timer_de.patch;patchdir=nvdisplay \
    file://nv-kernel-display-driver/0008-nvdisplay-nvidia-drm-fb-add-format-info-parameter-to.patch;patchdir=nvdisplay \
    file://nv-kernel-display-driver/0009-nvdisplay-nvidia-drm-remove-unused-date-member.patch;patchdir=nvdisplay \
    file://nv-kernel-display-driver/0010-nvdisplay-nvidia-drm-add-constify-attribute-for-stru.patch;patchdir=nvdisplay \
"

SRCBRANCH = "l4t/l4t-r36.5"
# tag: jetson_36.5
SRCREV_nvidia-oot = "b05da1f94ae5a2dbfe928ef7ab387035a2b77a20"
SRCREV_nvethernetrm = "22e582e01d1c9c258ac56873f1aa0822acb695f3"
SRCREV_nvdisplay = "a3da679668071cff718a33922b6d302bd18ebaa1"
SRCREV_hwpm = "ebfe0e9c4b4d96e07232ceb37f67168a1234ffeb"
SRCREV_nvgpu = "a4145c7b6e05af9b5ee4b8da246e3b3820023dca"
SRCREV_t23x-dts = "ed1b0f6b113bb050c8cda1ccb411a163f8e2799f"
SRCREV_tegra-dts = "8ba5d53ef1e1753f9f2a5b1f7b7b5fc5039de68e"
SRCREV_kernel-devicetree = "19952c8e25702e9de23500c3b1fb351bf4380446"

SRCREV_FORMAT = "nvidia-oot_nvethernetrm_nvdisplay_hwpm_nvgpu_t23x-dts_tegra-dts_kernel-devicetree"

inherit l4t_bsp

PV = "${L4T_VERSION}+git"
DEFAULT_PREFERENCE = "-1"

add_nvethernetrm_symlink() {
    ln -snf ../../../../../../nvethernetrm ${S}/nvidia-oot/drivers/net/ethernet/nvidia/nvethernet/nvethernetrm
}
do_unpack[postfuncs] += "add_nvethernetrm_symlink"

require nvidia-kernel-oot.inc
