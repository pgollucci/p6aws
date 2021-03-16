# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_alfred_profiles_list_q(org)
#
#  Args:
#	org -
#
#>
######################################################################
p6_aws_alfred_profiles_list_q() {
    local org="$1"

    grep '^\[profile ' "$HOME/.aws/config-$org" |
        sed -e 's,\[profile ,,' -e 's,\],,' -e "s,$org+,," |
        grep -v default |
        sort
}

######################################################################
#<
#
# Function: p6_aws_alfred_profiles_to_alred_items_q(org, ...)
#
#  Args:
#	org -
#	... - profiles
#
#>
######################################################################
p6_aws_alfred_profiles_to_alred_items_q() {
    local org="$1"
    shift 1 # profiles

    local json
    local profile
    for profile in "$@"; do
        local title=${profile}
        local arg="${org}+${profile}"
        local json_frag
        json_frag="\
{ \
  \"uid\": \"${profile}\", \
  \"title\": \"${title}\", \
  \"arg\": \"${arg}\", \
  \"icon\": {\"path\": \"icon.png\"}, \
  \"autocomplete\": \"${profile}\" \
},"
        json="${json}${json_frag}"
    done >/dev/null

    json=$(echo "$json" | sed -e 's/,$//')
    json="{\"items\": [$json]}"

    echo "$json"
}
