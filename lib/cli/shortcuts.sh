# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_shortcuts__debug(msg)
#
#  Args:
#	msg -
#
#>
######################################################################
p6_aws_shortcuts__debug() {
	local msg="$1"

	p6_aws__debug "shortcuts: $msg"

	p6_return_void
}

######################################################################
#<
#
# Function: str prefix = p6_aws_shortcuts_prefix()
#
#  Returns:
#	str - prefix
#
#>
######################################################################
p6_aws_shortcuts_prefix() {

	local prefix
	prefix="p6_awsa_"

	p6_return_str "$prefix"
}

######################################################################
#<
#
# Function: str fn_profile = p6_aws_shortcuts_profile_to_fn(profile)
#
#  Args:
#	profile -
#
#  Returns:
#	str - fn_profile
#
#>
######################################################################
p6_aws_shortcuts_profile_to_fn() {
	local profile="$1"

	local fn_profile
	fn_profile=$(p6_string_replace "$profile" "/" "_")

	p6_return_str "$fn_profile"
}

######################################################################
#<
#
# Function: p6_aws_shortcuts_gen(cred_file)
#
#  Args:
#	cred_file -
#
#>
#/ SYNOPSIS:
#/
#/ aws help config-vars
######################################################################
p6_aws_shortcuts_gen() {
	local cred_file="$1"

	local profile
	local line

	while read -r line; do
		p6_aws_shortcuts__debug "gen(): {line=$line}"
		case $line in
		*\[*\]*)
			local func_prefix
			local fn_profile
			local func

			profile=$line
			profile=$(p6_string_replace "$profile" "\[" "")
			profile=$(p6_string_replace "$profile" "\]" "")

			func_prefix=$(p6_aws_shortcuts_prefix)
			fn_profile=$(p6_aws_shortcuts_profile_to_fn "$profile")

			func="${func_prefix}${fn_profile}"
			p6_run_code "${func}() { p6_aws_cfg_realize \"$profile\" }"
			;;
		esac
	done <"$cred_file" >/dev/null

	p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_shortcuts_ungen(org)
#
#  Args:
#	org -
#
#>
######################################################################
p6_aws_shortcuts_ungen() {
	local org="$1"

	local func
	for func in $(typeset -f | awk '/^[a-z_0-9]+ \(\)/ { print $1 }' | grep "$(p6_aws_shortcuts_prefix \"$org\")"); do
		p6_env_export_un "$func"
	done
}