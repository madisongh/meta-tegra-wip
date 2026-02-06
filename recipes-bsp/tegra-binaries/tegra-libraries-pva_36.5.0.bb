L4T_DEB_COPYRIGHT_MD5 = "5c7cd503bbe3d6130391b09d9ed1005b"
DEPENDS = "tegra-libraries-core tegra-libraries-nvsci tegra-libraries-cuda"

require tegra-debian-libraries-common.inc

MAINSUM = "8f03378a8aaacb76400ff67c2461444030acffc2839ec72a553e2cdf539d8a44"

TEGRA_LIBRARIES_TO_INSTALL = "\
    nvidia/libnvpvaintf.so \
"
FILES_SOLIBSDEV = ""
SOLIBS = ".so*"
