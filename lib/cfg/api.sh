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

    ## XXX: v2 aws cli
    # step 1 ~/.aws/credentials has [name] id, key, token
    p6_aws_cfg_env_default_profile_active "$profile" >/dev/null
    p6_aws_cfg_env_profile_active "$profile" >/dev/null

    # step 2 ~/.aws/config has [profile name] and other vars like region
    # a) does section exist; if so process
    local conf_file
    conf_file=$(p6_aws_cfg_env_config_file_active)
    if grep -q "$profile" "$conf_file" >/dev/null; then
        local line
        local section=none
        while read -r line; do
            p6_aws_shortcuts__debug "gen(): {line=$line}"
            case $line in
            *\[*$profile*\]*) section=profile ;;
            *=*)
                if p6_string_eq "$section" "profile"; then
                    local key
                    key=$(echo "$line" | cut -d = -f 1 | sed -e 's, *,,g')
                    local val
                    val=$(echo "$line" | cut -d = -f 2 | sed -e 's, *,,g')
                    case $key in
                    region)
                        p6_aws_cfg_env_region_active "$val" >/dev/null
                        p6_aws_cfg_env_default_region_active "$val" >/dev/null
                        ;;
                    output)
                        p6_aws_cfg_env_output_active "$val" >/dev/null
                        ;;
                    esac
                fi
                ;;
            "") section=none ;;
            esac
        done <"$conf_file" >/dev/null
    else # b) if not add it
        local region=us-east-1
        local output=json
        p6_aws_cfg_env_region_active "$region" >/dev/null
        p6_aws_cfg_env_default_region_active "$region" >/dev/null
        p6_aws_cfg_env_output_active "$output" >/dev/null
        cat >>"$conf_file" <<EOF
[$profile]
region = $region
output = $output

EOF
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