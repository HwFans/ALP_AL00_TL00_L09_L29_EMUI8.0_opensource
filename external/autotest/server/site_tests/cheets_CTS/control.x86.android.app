# Copyright 2016 The Chromium OS Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

# This file has been automatically generated. Do not edit!

AUTHOR = 'ARC Team'
NAME = 'cheets_CTS.x86.android.app'
ATTRIBUTES = 'suite:cts'
DEPENDENCIES = 'arc, cts_abi_x86'
JOB_RETRIES = 2
TEST_TYPE = 'server'
TIME = 'LENGTHY'

DOC = ('Run package android.app of the '
       'Android 6.0_r16 Compatibility Test Suite (CTS), build 3736419,'
       'using x86 ABI in the ARC container.')

def run_CTS(machine):
    host = hosts.create_host(machine)
    job.run_test(
        'cheets_CTS',
        host=host,
        iterations=1,
        tag='android.app',
        target_package='android.app',
        bundle='x86',
        timeout=3600)

parallel_simple(run_CTS, machines)