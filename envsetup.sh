# Copyright (C) 2017 Unlegacy-Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function brunch()
{
    breakfast $*
    if [ $? -eq 0 ]; then
mka bacon
    else
echo "No such item in brunch menu. Try 'breakfast'"
        return 1
    fi
return $?
}

function mka() {
    case `uname -s` in
        Darwin)
            make -j `sysctl hw.ncpu|cut -d" " -f2` "$@"
            ;;
        *)
            schedtool -B -n 1 -e ionice -n 1 make -j$(cat /proc/cpuinfo | grep "^processor" | wc -l) "$@"
            ;;
    esac
}

function breakfast()
{
    target=$1
    unset LUNCH_MENU_CHOICES
    add_lunch_combo full-eng
    for f in `/bin/ls vendor/unlegacy/vendorsetup.sh 2> /dev/null`
        do
echo "including $f"
            . $f
        done
unset f

    if [ $# -eq 0 ]; then
        # No arguments, so let's have the full menu
        lunch
    else
echo "z$target" | grep -q "-"
        if [ $? -eq 0 ]; then
            # A buildtype was specified, assume a full device name
            lunch $target
        else
            # This is probably just the UA model name
            lunch ua_$target-userdebug
        fi
fi
return $?
}
