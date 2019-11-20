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
# Function: str p6_awsa_ = p6_aws_shortcuts_prefix()
#
#  Returns:
#	str - p6_awsa_
#
#>
######################################################################
p6_aws_shortcuts_prefix() {

    p6_return_str "p6_awsa_"
}

######################################################################
#<
#
# Function: str fn_profile = p6_aws_shortcuts_profile_to_fn(proifle)
#
#  Args:
#	proifle - 
#
#  Returns:
#	str - fn_profile
#
#>
######################################################################
p6_aws_shortcuts_profile_to_fn() {
    local proifle="$1"

    local fn_profile=$(p6_string_replace "$profile" "/" "_")

    p6_return_str "$fn_profile"
}

######################################################################
#<
#
# Function: str  = p6_aws_shortcuts_gen(org, cred_file)
#
#  Args:
#	org - 
#	cred_file - 
#
#  Returns:
#	str - #	str - func
#
#>
######################################################################
p6_aws_shortcuts_gen() {
    local org="$1"
    local cred_file="$2"

    if ! p6_file_exists "$cred_file"; then
	p6_return_str ""
    else
    local line
    local profile
    cat $cred_file | while read line; do
	p6_aws_shortcuts__debug "gen(): {line=$line}"
	case $line in
	    \#*)
		p6_aws_shortcuts__debug "gen():\tcomment"
		;;
	    *\[*\]*)
		profile=$line
		profile=$(p6_string_replace "$profile" "\[" "")
		profile=$(p6_string_replace "$profile" "\]" "")

		cfg=$(p6_obj_create "hash")

		local o1=$(p6_obj_item_set "$cfg" "profile" "$profile")
		local o2=$(p6_obj_item_set "$cfg" "default_profile" "$profile")
		local o3=$(p6_obj_item_set "$cfg" "org" "$org")
		;;
	    *=*)
		local key=$(echo "$line" | cut -d = -f 1 | sed -e 's, *,,g')
		local val=$(echo "$line" | cut -d = -f 2 | sed -e 's, *,,g')

		key=$(p6_string_replace "$key" "aws_" "")

		p6_aws_shortcuts__debug "gen():\t[key=$key] -> [val=$val]"

		local old=$(p6_obj_item_set "$cfg" "$key" "$val")
		;;
	esac
    done

    local func_prefix=$(p6_aws_shortcuts_prefix)
    local fn_profile=$(p6_aws_shortcuts_profile_to_fn "$profile")
    local func="${func_prefix}${fn_profile}"

    p6_run_code "$func() { p6_aws_cfg_realize \"$cfg\" }"

    p6_return_str "$func"
    fi
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
    for func in $(typeset -f | awk '/^[a-z_0-9]+ \(\)/ { print $1 }' | grep $(p6_aws_shortcuts_prefix "$org")); do
	p6_env_export_un "$func"
    done
}