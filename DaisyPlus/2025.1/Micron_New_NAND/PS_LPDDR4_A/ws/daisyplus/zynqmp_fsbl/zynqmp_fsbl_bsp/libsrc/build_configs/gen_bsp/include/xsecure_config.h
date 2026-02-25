/******************************************************************************
# Copyright (C) 2023 - 2024 Advanced Micro Devices, Inc.  All rights reserved.
# SPDX-License-Identifier: MIT
******************************************************************************/
#ifndef XSECURE_CONFIG_H
#define XSECURE_CONFIG_H

/* #undef XILSECURE_INCLUDE_XPLMI_BSP_CONFIG_H */
#if defined(XILSECURE_INCLUDE_XPLMI_BSP_CONFIG_H)
#include "xplmi_bsp_config.h"
#endif

/* #undef XSECURE_TRUSTED_ENVIRONMENT */
#define XSECURE_TPM_ENABLE
/* #undef XSECURE_ECC_SUPPORT_NIST_P192 */
/* #undef XSECURE_ECC_SUPPORT_NIST_P224 */
/* #undef XSECURE_ECC_SUPPORT_NIST_P256 */
#define XSECURE_ECC_SUPPORT_NIST_P521
/* #undef XSECURE_CACHE_DISABLE */
#define XSECURE_ELLIPTIC_ENDIANNESS U

#define XSECURE_TRNG_USER_CFG_SEED_LIFE U
#define XSECURE_TRNG_USER_CFG_DF_LENGTH U
#define XSECURE_TRNG_USER_CFG_ADAPT_TEST_CUTOFF U
#define XSECURE_TRNG_USER_CFG_REP_TEST_CUTOFF U

#define XSECURE_RSA_KEY_GEN_SIZE_IN_BYTES U
#define XSECURE_KEY_SLOT_ADDR U

#endif /* XSECURE_CONFIG_H */
