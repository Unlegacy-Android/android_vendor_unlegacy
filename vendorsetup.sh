# Include our bits
. vendor/unlegacy/bash_completion/git.bash
. vendor/unlegacy/bash_completion/repo.bash
. vendor/unlegacy/envsetup.sh

# Unlegacy Android devices combos
add_lunch_combo ua_espresso-userdebug
add_lunch_combo ua_espresso3g-userdebug
add_lunch_combo ua_picasso2-userdebug
add_lunch_combo ua_tuna-userdebug

while read -r file; do
    project="$(dirname ${file} | sed 's|vendor/unlegacy/patch/||g')"
    bugid="$(grep '^Bug: ' ${file} | sed -E 's|^\s*Bug: ([0-9]+).*$|\1|g')"
    if [ "$(git -C ${project} log --grep "Bug: ${bugid}")" ]; then
        echo "${project}: b/${bugid} is already patched"
        continue
    fi
    git -C "${project}" am -q "$(pwd)/${file}" || git -C "${project}" am --abort
done <<< "$(find vendor/unlegacy/patch -type f)"
unset project
unset bugid
