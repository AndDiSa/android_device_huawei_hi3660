/*
 * Copyright (C) 2024 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef VENDOR_LINEAGE_TOUCH_V1_0_GLOVEMODE_H
#define VENDOR_LINEAGE_TOUCH_V1_0_GLOVEMODE_H

#include <vendor/lineage/touch/1.0/IGloveMode.h>

namespace vendor {
namespace lineage {
namespace touch {
namespace V1_0 {
namespace implementation {

using ::android::hardware::Return;

class GloveMode : public IGloveMode {
   public:
    GloveMode();
    // Methods from ::vendor::lineage::touch::V1_0::IGloveMode follow.
    Return<bool> isEnabled() override;
    Return<bool> setEnabled(bool enabled) override;

   private:
    bool mHasGloveMode;
};

}  // namespace implementation
}  // namespace V1_0
}  // namespace touch
}  // namespace lineage
}  // namespace vendor

#endif  // VENDOR_LINEAGE_TOUCH_V1_0_GLOVEMODE_H
