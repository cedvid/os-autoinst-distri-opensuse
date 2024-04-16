# SUSE's openQA tests
#
# Copyright 2023 SUSE LLC
# SPDX-License-Identifier: FSFAP

# Package: perl-Bootloader
# Summary: Basic functional test for pbl package
# Maintainer: QE Core <qe-core@suse.de>

use base 'consoletest';
use testapi;
use serial_terminal 'select_serial_terminal';
use strict;
use warnings;
use utils 'zypper_call';
use package_utils;
use power_action_utils 'power_action';
use version_utils qw(is_sle check_version is_transactional);
use transactional;

sub run {
    my ($self) = @_;
    select_console 'root-console';
    assert_script_run 'ls';
}

1;
