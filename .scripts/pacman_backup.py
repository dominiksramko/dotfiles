#!/usr/bin/env python
# -*- coding: utf-8 -*-

import io
import subprocess
import re
import os

PACKAGE_BLACKLIST = [
  'autoconf',
  'automake',
  'alsa-',
  'bash',
  'binutils',
  'bison',
  'bzip2',
  'coreutils',
  'cryptsetup',
  'device-mapper',
  'dhcpcd',
  'diffutils',
  'e2fsprogs',
  'exo',
  'fakeroot',
  'file',
  'filesystem',
  'findutils',
  'flex',
  'garcon',
  'gawk',
  'gcc',
  'gcc-libs',
  'gettext',
  'glibc',
  'grep',
  'groff',
  'gtk-xfce-engine',
  'gtk3-print-backends',
  'gzip',
  'inetutils',
  'iproute2',
  'iputils',
  'jfsutils',
  'less',
  'lib32-gnutls',
  'lib32-libpulse',
  'lib32-libtxc_dxtn',
  'libmpcdec',
  'libtool',
  'licenses',
  'linux',
  'logrotate',
  'lvm2',
  'm4',
  'make',
  'man-db',
  'man-pages',
  'mdadm',
  'mesa',
  'mutter',
  'nano',
  'netctl',
  'opusfile',
  'patch',
  'pciutils',
  'pcmciautils',
  'perl',
  'pkg-config',
  'procps-ng',
  'psmisc',
  'reiserfsprogs',
  's-nail',
  'sed',
  'shadow',
  'sudo',
  'sysfsutils',
  'systemd',
  'systemd-sysvcompat',
  't1-cursor-ib',
  'tar',
  'texinfo',
  'tumbler',
  'usbutils',
  'util-linux',
  'vi',
  'wavpack',
  'which',
  'xfdesktop',
  'xfsprogs',
  'xfwm4',
  'xfwm4-themes',
  'xorg-'
]
FILE_OUTPUT_PATH = '~/installed'

def get_package_list():
  package_list = []

  proc = subprocess.Popen(["pacman", "-Qqe"], stdout=subprocess.PIPE)

  for line in io.TextIOWrapper(proc.stdout, encoding="utf-8"):
    if line != '':
      package_name = line.replace('\n', '')

      if not is_package_blacklisted(package_name):
        package_list.append(package_name)

  return package_list

def is_package_blacklisted(package_name):
  for blacklist_item in PACKAGE_BLACKLIST:
    if re.match(blacklist_item, package_name):
      return True

  return False

def save_list_to_file(list):
  path = os.path.expanduser(FILE_OUTPUT_PATH)
  with open(path, mode='wt', encoding='utf-8') as output:
    output.write('\n'.join(list))

package_list = get_package_list()
save_list_to_file(package_list)