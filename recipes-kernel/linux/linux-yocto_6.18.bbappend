FILESEXTRAPATHS:prepend:tegra := "${THISDIR}/${PN}-6.12:${THISDIR}/${PN}:"

require ${@'tegra-kernel.inc' if 'tegra' in d.getVar('MACHINEOVERRIDES').split(':') else ''}

SRC_URI:append:tegra = " \
    file://0001-NVIDIA-SAUCE-dmaengine-tegra-Get-slave-channel-based.patch \
    file://0002-NVIDIA-SAUCE-gpcdma-fix-crash-in-gpcdma-driver.patch \
    file://0003-NVIDIA-SAUCE-dmaengine-tegra-Use-struct-for-register.patch \
    file://0004-NVIDIA-SAUCE-dmaengine-tegra-Support-more-than-40-bi.patch \
    file://0005-NVIDIA-SAUCE-dmaengine-tegra-Add-Tegra264-support.patch \
    file://0006-NVIDIA-SAUCE-dmaengine-tegra-Remove-reset-control.patch \
    file://0007-NVIDIA-SAUCE-v4l2-core-Add-sync-op-to-subdev_core_op.patch \
    file://0008-NVIDIA-SAUCE-include-linux-Add-new-packed-v4l2-pixel.patch \
    file://0009-NVIDIA-SAUCE-v4l2-core-Add-new-packed-v4l2-pixel-for.patch \
    file://0010-NVIDIA-SAUCE-usb-xhci-tegra-don-t-assign-port-role-b.patch \
    file://0011-NVIDIA-SAUCE-usb-typec-ucsi-Find-connector-fwnode-wi.patch \
    file://0012-NVIDIA-SAUCE-arm64-Increase-FORCE_MAX_ORDER-for-Tegr.patch \
    file://0013-NVIDIA-SAUCE-cpufreq-tegra194-Add-support-for-Tegra2.patch \
    file://0014-NVIDIA-SAUCE-cpufreq-tegra194-disable-irqs-for-freq-.patch \
    file://0015-NVIDIA-SAUCE-cpufreq-tegra194-fix-policy-initializat.patch \
    file://0016-NVIDIA-SAUCE-cpufreq-tegra194-Remove-unused-variable.patch \
    file://0017-NVIDIA-SAUCE-i2c-core-skip-prod-settings-node-during.patch \
    file://0018-iommu-tegra241-cmdqv-Decouple-driver-from-ACPI.patch \
    file://0019-NVIDIA-SAUCE-xhci-tegra-avoid-usb-access-after-shutd.patch \
    file://0020-NVIDIA-SAUCE-soc-tegra-pmc-skip-error-if-aotag-not-l.patch \
    file://0021-NVIDIA-SAUCE-soc-tegra-pmc-Add-support-for-SOC-speci.patch \
    file://0022-NVIDIA-SAUCE-soc-tegra-pmc-Re-organize-PMC-driver-AP.patch \
    file://0023-NVIDIA-SAUCE-soc-tegra-pmc-Configure-internal-regula.patch \
    file://0024-NVIDIA-SAUCE-serial-pl011-add-nvidia-pl011-controlle.patch \
    file://0025-NVIDIA-SAUCE-tty-serial-amba-pl011-fix-deadlock-with.patch \
    file://0026-NVIDIA-SAUCE-serial-pl011-add-eord-interrupt-support.patch \
    file://0027-NVIDIA-SAUCE-tty-serial-amba-pl011-Fix-DMA-hang-with.patch \
    file://0028-NVIDIA-SAUCE-s25fs-Add-post-get-map-id-fixup.patch \
    file://0029-NVIDIA-SAUCE-of-irq-Adjust-of_pci_irq-parsing-for-mu.patch \
    file://0030-NVIDIA-SAUCE-i2c-tegra-resume-explicitly-if-pm_runti.patch \
    file://0031-NVIDIA-SAUCE-spi-spi-tegra114-retain-the-spi-mode.patch \
    file://0032-NVIDIA-SAUCE-tegra-prod-use-legacy-prod-settings.patch \
    file://0033-NVIDIA-SAUCE-platform-tegra-Add-tegra-prod-as-built-.patch \
    file://0034-NVIDIA-SAUCE-phy-tegra-Increase-timeout-for-USB2_TRK.patch \
    file://0035-NVIDIA-SAUCE-tegra-sdhci-do-not-apply-prod-settings-.patch \
    file://0036-NVIDIA-SAUCE-serial-amba-pl011-Do-not-use-IBRD.patch \
    file://0037-NVIDIA-SAUCE-bpmp-ABI-headers-update.patch \
    file://0038-NVIDIA-SAUCE-i2c-tegra-Add-HS-mode-support.patch \
    file://0039-NVIDIA-SAUCE-i2c-tegra-Add-SW-Mutex-support-in-Tegra.patch \
    file://0040-NVIDIA-SAUCE-i2c-tegra-Add-Tegra264-support.patch \
    file://0041-NVIDIA-SAUCE-hte-Add-tegra264-GTE-support.patch \
    file://0042-NVIDIA-SAUCE-nvmem-Add-Tegra-efuse-driver.patch \
    file://0043-NVIDIA-SAUCE-phy-tegra-xusb-Add-Tegra264-support.patch \
    file://0044-NVIDIA-SAUCE-usb-gadget-udc-Add-Tegra264-support.patch \
    file://0045-NVIDIA-SAUCE-usb-host-xhci-tegra-Add-Tegra264-XHCI-s.patch \
    file://0046-NVIDIA-SAUCE-usb-xhci-skip-mbox-configuration.patch \
    file://0047-NVIDIA-SAUCE-phy-xusb-skip-USB2-PAD-tracking-and-fus.patch \
    file://0048-NVIDIA-SAUCE-xudc-skip-SSPX-programming-in-xudc.patch \
    file://0049-NVIDIA-SAUCE-usb-gadget-xudc-Enable-u1-u2-for-Tegra2.patch \
    file://0050-NVIDIA-SAUCE-usb-gadget-xudc-Set-the-u1-timeout-defa.patch \
    file://0051-NVIDIA-SAUCE-memory-tegra-donot-print-error-for-prob.patch \
    file://0052-NVIDIA-SAUCE-memory-tegra-Add-Tegra264-MC-and-EMC-su.patch \
    file://0053-NVIDIA-SAUCE-memory-tegra-add-clients-to-MC-clients-.patch \
    file://0054-NVIDIA-SAUCE-memory-tegra-Disable-mc-err-handling-in.patch \
    file://0055-NVIDIA-SAUCE-memory-tegra-Fix-channel-enable-registe.patch \
    file://0056-NVIDIA-SAUCE-memory-Add-support-for-T264-mc-err.patch \
    file://0057-NVIDIA-SAUCE-PCI-Disable-HDA-enablement-on-Tegra-iGP.patch \
    file://0058-NVIDIA-SAUCE-gpio-t264-add-GPIO-support-for-T264.patch \
    file://0059-NVIDIA-SAUCE-gpio-tegra-add-dynamic-pinmuxing-suppor.patch \
    file://0060-NVIDIA-SAUCE-gpio-tegra-enable-GTE-for-T264.patch \
    file://0061-NVIDIA-SAUCE-pinctrl-t264-Add-pinctrl-support-for-T2.patch \
    file://0062-NVIDIA-SAUCE-pinctrl-Remove-duplication-of-PINCTRL_T.patch \
    file://0063-NVIDIA-SAUCE-pwm-tegra-Avoid-hard-coded-max-clock-fr.patch \
    file://0064-NVIDIA-SAUCE-pwm-tegra-Neutralize-PWM-register-acces.patch \
    file://0065-NVIDIA-SAUCE-pwm-tegra-Introduce-offset-of-PWM-enabl.patch \
    file://0066-NVIDIA-SAUCE-pwm-tegra-Get-PWM-duty-and-scale-from-m.patch \
    file://0067-NVIDIA-SAUCE-pwm-tegra-Differentiate-between-depth-a.patch \
    file://0068-NVIDIA-SAUCE-pwm-tegra-Correct-tegra_pwm_config.patch \
    file://0069-NVIDIA-SAUCE-pwm-tegra-Add-Tegra264-PWM-controller-s.patch \
    file://0070-NVIDIA-SAUCE-pwm-tegra-Avoid-overflow-on-100-duty-cy.patch \
    file://0071-NVIDIA-SAUCE-phy-tegra-xusb-Remove-ignore_fuse-flag.patch \
    file://0072-NVIDIA-SAUCE-usb-gadget-xudc-Add-platform-init-funct.patch \
    file://0073-NVIDIA-SAUCE-usb-gadget-tegra-xudc-Increase-credit-H.patch \
    file://0074-NVIDIA-SAUCE-usb-gadget-tegra-xudc-Increase-tPortCon.patch \
    file://0075-NVIDIA-SAUCE-phy-tegra-xusb-tegra186-Fix-and-extend-.patch \
    file://0076-NVIDIA-SAUCE-soc-tegra-fuse-Add-FUSE_USB_CALIB_EXT2-.patch \
    file://0077-NVIDIA-SAUCE-usb-gadget-tegra-xudc-Reduce-ping.LFPS-.patch \
    file://0078-NVIDIA-SAUCE-virt-tegra-build-tegra_hv.c-driver-as-b.patch \
    file://0079-NVIDIA-SAUCE-firmware-bpmp-build-bpmp-hv-driver-as-b.patch \
    file://0080-NVIDIA-SAUCE-firmware-ivc-merge-ivc_ext.c-with-upstr.patch \
    file://0081-NVIDIA-SAUCE-phy-tegra-xusb-Fix-setting-WAKE_WALK_EN.patch \
    file://0082-NVIDIA-SAUCE-soc-tegra-pmc-Add-Tegra264-USB-wake-eve.patch \
    file://0083-NVIDIA-SAUCE-net-phy-aquantia-Poll-for-valid-FW-ID.patch \
    file://0084-NVIDIA-SAUCE-xhci-tegra-fix-port-reset-issue.patch \
    file://0085-NVIDIA-SAUCE-phy-tegra-fix-port-reset-issue.patch \
    file://0086-NVIDIA-SAUCE-xhci-tegra-Remove-unused-variable.patch \
    file://0087-NVIDIA-SAUCE-efuse-Add-odm-id-odm-info-support.patch \
    file://0088-NVIDIA-SAUCE-clocksource-timer-tegra186-adjust-WDT-t.patch \
    file://0089-NVIDIA-SAUCE-clocksource-timer-tegra186-Enable-WDT-a.patch \
    file://0090-NVIDIA-SAUCE-memory-tegra-add-bwmgr-id-for-display-c.patch \
    file://0091-NVIDIA-SAUCE-memory-Remove-unused-variable.patch \
    file://0092-NVIDIA-SAUCE-xhci-Enable-USB-wakeup-function-for-Teg.patch \
    file://0093-NVIDIA-SAUCE-clk-tegra-make-nocache-for-clocks.patch \
    file://0094-NVIDIA-SAUCE-usb-host-tegra-Remove-manual-wake-IRQ-d.patch \
    file://0095-soc-tegra-pmc-Add-sysfs-nodes-to-select-boot-chain.patch \
    file://tegra.cfg \
    file://tegra-drm.cfg \
    file://tegra-governors.cfg \
    file://tegra-pcie.cfg \
    file://tegra-scsi-ufs.cfg \
    file://tegra-sound.cfg \
    file://tegra-usb.cfg \
    file://tegra-v4l2.cfg \
    file://tegra-virtualization.cfg \
    file://rtw8822ce-wifi.cfg \
    file://r8169.cfg \
"

COMPATIBLE_MACHINE:tegra = "(tegra)"
KMACHINE:tegra = "genericarm64"

KERNEL_FEATURES:append:tegra = " \
    features/bluetooth/bluetooth.scc \
    features/bluetooth/bluetooth-usb.scc \
    features/i2c/i2c.scc \
    features/input/touchscreen.scc \
    features/media/media.scc \
    features/media/media-platform.scc \
    features/media/media-usb-webcams.scc \
    features/usb/serial.scc \
    features/usb/usb-raw-gadget.scc \
    features/usb/xhci-hcd.scc \
"
