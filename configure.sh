#!/bin/sh -e

echo "SYSROOT=\"$(xcode-select -p)/Platforms/${PLATFORM}.platform/Developer/SDKs/${PLATFORM}${SDK}.sdk\"" >>ios.config
echo "CFLAGS=\"-arch ${SUBARCH} -isysroot $(xcode-select -p)/Platforms/${PLATFORM}.platform/Developer/SDKs/${PLATFORM}${SDK}.sdk -miphoneos-version-min=${MIN_VER}\"" >>ios.config
echo "LDFLAGS=\"-Wl,-syslibroot,$(xcode-select -p)/Platforms/${PLATFORM}.platform/Developer/SDKs/${PLATFORM}${SDK}.sdk\"" >>ios.config
echo "TRIPLE=\"${SUBARCH/arm64/arm}-apple-darwin\"" >>ios.config
echo "TRIPLEREAL=\"${SUBARCH/arm64/aarch64}-apple-darwin\"" >>ios.config
