# shellcheck shell=bash
######################################################################
#<
#
# Function: str json = p6_aws_alfred_list()
#
#  Returns:
#	str - json
#
#>
######################################################################
p6_aws_alfred_list() {

    local json
    local profile
    for profile in $(p6_aws_profile_config_list); do
        local json_frag
        json_frag="\
{ \
  \"uid\": \"${profile}\", \
  \"title\": \"${profile}\", \
  \"arg\": \"${profile}\", \
  \"icon\": {\"path\": \"icon.png\"}, \
  \"autocomplete\": \"${profile}\" \
},"
        json="${json}${json_frag}"
    done >/dev/null
    json=$(p6_echo "$json" | sed -e 's/,$//')
    json="{\"items\": [$json]}"

    p6_return_str "$json"
}

######################################################################
#<
#
# Function: p6_aws_alfred_public_bastion(pfunc)
#
#  Args:
#	pfunc -
#
#>
######################################################################
p6_aws_alfred_public_bastion() {
    local pfunc="$1"

    p6_macosx_ssh_do "Bastion" "public" "$pfunc"
}

######################################################################
#<
#
# Function: p6_aws_alfred_private_bastion(pfunc)
#
#  Args:
#	pfunc -
#
#>
######################################################################
p6_aws_alfred_private_bastion() {
    local pfunc="$1"

    p6_macosx_ssh_do "PrivateHost" "jump" "$pfunc"
}