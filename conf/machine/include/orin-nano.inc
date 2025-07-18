TEGRA_BOARDID ?= "3767"
TEGRA_FAB ?= "RC1"
TEGRA_BOARDSKU ?= "0005"
TEGRA_BOARDREV ?= "B.4"
NVPMODEL ?= "nvpmodel_p3767_0003_super"
NVFANCONTROL ?= "nvfancontrol_p3767_0000"

MACHINEOVERRIDES =. "orin-nano:"
TNSPEC_BOOTDEV_DEFAULT ?= "mmcblk0p1"
TEGRA_FLASHVAR_CHIP_SKU ?= "00:00:00:D5"
require conf/machine/include/tegra234.inc

TEGRA_BUPGEN_SPECS ?= "fab=000;boardsku=0005;boardrev=;chipsku=00:00:00:D5;bup_type=bl \
                       fab=000;boardsku=0005;boardrev=;bup_type=kernel"

KERNEL_DEVICETREE ?= "tegra234-p3768-0000+p3767-0005-nv-super.dtb"
KERNEL_ARGS ?= "mminit_loglevel=4 console=ttyTCU0,115200 firmware_class.path=/etc/firmware fbcon=map:0 nospectre_bhb video=efifb:off console=tty0"
MACHINE_EXTRA_RRECOMMENDS += "kernel-module-r8168 kernel-module-r8169 kernel-module-realtek"
MACHINE_EXTRA_RDEPENDS += "linux-firmware-rtl8168"

BOOTPART_SIZE ?= "8388608"
ROOTFSPART_SIZE_DEFAULT ?= "30064771072"
ODMDATA ?= "gbe-uphy-config-8,hsstp-lane-map-3,hsio-uphy-config-0"
EMMC_BCT ?= "tegra234-p3767-0001-sdram-l4t.dts"
TEGRA_AUDIO_DEVICE ?= "tegra-hda-p3767-p3509"

OTABOOTDEV ?= "/dev/mtdblock0"
OTAGPTDEV ?= "/dev/mtdblock0"

TEGRA_PLUGIN_MANAGER_OVERLAYS ?= "tegra234-carveouts.dtbo tegra-optee.dtbo tegra234-p3768-0000+p3767-0000-dynamic.dtbo"

TEGRA_FLASHVAR_BPFDTB_FILE ?= "tegra234-bpmp-3767-0003-3768-super.dtb"
TEGRA_FLASHVAR_BPF_FILE ?= "bpmp_t234-TE950M-A1_prod.bin"
TEGRA_FLASHVAR_BR_CMD_CONFIG ?= "tegra234-mb1-bct-reset-p3767-0000.dts"
TEGRA_FLASHVAR_DEVICEPROD_CONFIG ?= "tegra234-mb1-bct-cprod-p3767-0000.dts"
TEGRA_FLASHVAR_DEVICE_CONFIG ?= "tegra234-mb1-bct-device-p3767-0000.dts"
TEGRA_FLASHVAR_DEV_PARAMS ?= "tegra234-br-bct-p3767-0000-l4t.dts"
TEGRA_FLASHVAR_DEV_PARAMS_B ?= "tegra234-br-bct_b-p3767-0000-l4t.dts"
TEGRA_FLASHVAR_EMC_FUSE_DEV_PARAMS ?= "tegra234-br-bct-diag-boot.dts"
TEGRA_FLASHVAR_GPIOINT_CONFIG ?= "tegra234-mb1-bct-gpioint-p3767-0000.dts"
TEGRA_FLASHVAR_MB2BCT_CFG ?= "tegra234-mb2-bct-misc-p3767-0000.dts"
TEGRA_FLASHVAR_MINRATCHET_CONFIG ?= "--minratchet_config tegra234-mb1-bct-ratchet-p3767-0000.dts"
TEGRA_FLASHVAR_MISC_CONFIG ?= "tegra234-mb1-bct-misc-p3767-0000.dts"
TEGRA_FLASHVAR_PINMUX_CONFIG ?= "tegra234-mb1-bct-pinmux-p3767-dp-a03.dtsi"
TEGRA_FLASHVAR_PMC_CONFIG ?= "tegra234-mb1-bct-padvoltage-p3767-dp-a03.dtsi"
TEGRA_FLASHVAR_PMIC_CONFIG ?= "tegra234-mb1-bct-pmic-p3767-0000-@PMICREV@.dts"
TEGRA_FLASHVAR_PROD_CONFIG ?= "tegra234-mb1-bct-prod-p3767-0000.dts"
TEGRA_FLASHVAR_SCR_CONFIG ?= "tegra234-mb2-bct-scr-p3767-0000.dts"
TEGRA_FLASHVAR_UPHY_CONFIG ?= "--uphy tegra234-mb1-bct-uphylane-si.dtsi"
TEGRA_FLASHVAR_WB0SDRAM_BCT ?= "tegra234-p3767-0001-wb0sdram-l4t.dts"
