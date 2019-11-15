######################################################################
#<
#
# Function: p6_aws_shortcuts_unset(org)
#
#  Args:
#	org - 
#
#>
######################################################################
p6_aws_shortcuts_unset() {
    local org="$1"

    local func
    for func in $(typeset -f | awk '/^[a-z_0-9]+ \(\)/ { print $1 }' | grep p6_${org}_awsa_); do
	unset $func
    done
}

######################################################################
#<
#
# Function: p6_aws_shortcuts_set(org, cred_file)
#
#  Args:
#	org - 
#	cred_file - 
#
#>
######################################################################
p6_aws_shortcuts_gen() {
    local org="$1"
    local cred_file="$2"

    local profiles=$(awk '/^\[/ { print }' < $cred_file | grep -v default | sed -e 's,[][],,g')

    local profile
    for profile in $(echo $profiles); do
	p6_run_code "p6_${org}_awsa_${profile}() { p6_aws_cfg_activate_jit \"$profile\" }"
    done
}

######################################################################
#<
#
# Function: p6_aws_shortcuts(org, cred_file)
#
#  Args:
#	org - 
#	cred_file - 
#
#>
######################################################################
p6_aws_shortcuts() {
    local org="$1"
    local cred_file="$2"

    p6_aws_shortcuts_delete "$org"
    p6_aws_shortcuts_gen "$org" "$cred_file"
}