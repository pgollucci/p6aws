# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_alfred_bastion_public(pfunc)
#
#  Args:
#	pfunc -
#
#>
######################################################################
p6_aws_alfred_bastion_public() {
    local pfunc="$1"

    p6_macosx_ssh_do "Bastion" "public" "$pfunc"
}

######################################################################
#<
#
# Function: p6_aws_alfred_bastion_private(pfunc)
#
#  Args:
#	pfunc -
#
#>
######################################################################
p6_aws_alfred_bastion_private() {
    local pfunc="$1"

    p6_macosx_ssh_do "PrivateHost" "jump" "$pfunc"
}
