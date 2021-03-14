######################################################################
#<
#
# Function: p6_aws_cfg_realize(profile)
#
#  Args:
#	profile -
#
#>
######################################################################
p6_aws_cfg_realize() {
    local profile="$1"

    p6_aws_util_env_profile "$profile"

    local conf_file
    conf_file=$(p6_aws_env_config_file_active)

    # does section exist; if so process
    if p6_file_contains "$profile" "$conf_file"; then
        p6_aws_cfg__debug "realize(): {profile($profile) in ($conf_file)}"
        local line
        local section=none

        while read -r line; do
            p6_aws_cfg__debug "realize(): {line=$line}"

            case $line in
            *\[*$profile*\]*)
                p6_aws_cfg__debug "realize(): {section=$profile}"

                section=$profile
                ;;
            *=*)
                p6_aws_cfg__debug "realize(): {k/v=$line}"

                if p6_string_eq "$section" "$profile"; then
                    local key
                    local val
                    key=$(echo "$line" | cut -d = -f 1 | sed -e 's, *,,g')
                    val=$(echo "$line" | cut -d = -f 2 | sed -e 's, *,,g')

                    p6_aws_env_"${key}"_active "$val"
                fi
                ;;
            "")
                p6_aws_cfg__debug "realize(): {section end}"
                if p6_string_eq "$section" "$profile"; then
                    break
                fi
                section=none
                ;;
            esac
        done <"$conf_file" >/dev/null
    fi

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_show()
#
#>
######################################################################
p6_aws_cfg_show() {

    p6_env_list "^AWS_"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_reset()
#
#>
######################################################################
p6_aws_cfg_reset() {

    local kv
    for kv in $(p6_aws_cfg_show); do
        local k=$(p6_echo $kv | cut -f 1 -d '=')
        p6_env_export_un "$k"
    done

    p6_env_export "AWS_PAGER" ""

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_clear()
#
#>
######################################################################
p6_aws_cfg_clear() {

    local kv
    for kv in $(p6_aws_cfg_show | grep -v _saved); do
        local k=$(p6_echo $kv | cut -f 1 -d '=')
        p6_env_export_un "$k"
    done

    p6_env_export "AWS_PAGER" ""

    p6_return_void
}
