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
# Function: str all_funcs = p6_aws_shorcuts_gen()
#
#  Returns:
#	str - all_funcs
#
#>
######################################################################
p6_aws_shorcuts_gen() {

	local profile
	local aws_access_key_id
	local aws_secret_access_key
	local all_funcs=""
	local line
	while read -r line; do
		p6_aws_shortcuts__debug "gen(): {line=$line}"
		case $line in
		\#*)
			p6_aws_shortcuts__debug "gen():\tcomment"
			;;
		*\[*\]*)
			profile=$line
			profile=$(p6_string_replace "$profile" "\[" "")
			profile=$(p6_string_replace "$profile" "\]" "")
			;;
		aws_access_key_id*)
			aws_access_key_id=$(echo "$line" | cut -d = -f 2 | sed -e 's, *,,g')
			;;
		aws_secret_access_key*)
			aws_secret_access_key=$(echo "$line" | cut -d = -f 2 | sed -e 's, *,,g')
			;;
		"")
			AWS_ACCESS_KEY_ID="$aws_access_key_id" AWS_SECRET_ACCESS_KEY="$aws_secret_access_key" aws-vault add "$profile" --add-config --env

			local func_prefix=
			func_prefix=$(p6_aws_shortcuts_prefix)
			local fn_profile
			fn_profile=$(p6_aws_shortcuts_profile_to_fn "$profile")
			local func
			func="${func_prefix}${fn_profile}"
			p6_run_code "${func}() { p6_aws_cfg_realize \"$profile\" }"
			all_funcs="$all_funcs
${func}"
			;;
		esac
	done <~/.aws/cred-"$AWS_ORG" >/dev/null

	p6_return_str "$all_funcs"
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
