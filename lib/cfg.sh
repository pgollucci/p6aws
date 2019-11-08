p6_aws_cfg__debug() {
    local msg="$1"

    p6_aws__debug "cfg: $msg"

    p6_return_void
}

p6_aws_cfg_activate() {
    local profile="$1"
    local region="$2"
    local org="$3"

    local cfg=$(p6_obj_hash_create)

    p6_aws_cfg_env_profile_active "$profile"
    p6_aws_cfg_env_default_profile_active "$profile"
    p6_aws_cfg_env_region_active "$region"
    p6_aws_cfg_env_default_region_active "$region"

    p6_obj_hash_set "$cfg" "profile" "$profile"
    p6_obj_hash_set "$cfg" "default_profile" "$profile"
    p6_obj_hash_set "$cfg" "region" "$region"
    p6_obj_hash_set "$cfg" "default_region" "$region"

    if ! p6_string_blank "$org"; then
	p6_aws_cfg_env_org "$org"
	p6_obj_hash_set "$cfg" "org" "$org"
    fi

    p6_return_void
}

p6_aws_cfg_activate_jit() {
    local cfg="$1"

    local key
    for key in $(p6_obj_hash_keys "$cfg"); do
	local val=$(p6_obj_hash_get "$cfg" "$key")

	p6_aws_cfg__debug "activate_jit(): p6_aws_cfg_env_[key=$key]_active [val=$val"]
    done

    p6_return_void
}

p6_aws_cfg_from_cred_file() {
    local profile="$1"
    local cred_file="$2"

    p6_aws_cfg__debug "from_cred_file(): [profile=$profile] [cred_file=$cred_file]"

    local cfg=$(p6_obj_hash_create)
    local o1=$(p6_obj_hash_set "$cfg" "aws_profile" "$profile")
    local o2=$(p6_obj_hash_set "$cfg" "aws_default_profile" "$profile")

    local line
    sed -n '/\[/,/\[/p' $cred_file | while read line; do
	case $line in
	    *\[*) continue ;;
	esac
	p6_aws_cfg__debug "from_cred_file(): [line=$line]"

	local key=$(echo "$line" | cut -d = -f 1 | sed -e 's, *,,g')
	local val=$(echo "$line" | cut -d = -f 2 | sed -e 's, *,,g')
	local o3=$(p6_obj_hash_set "$cfg" "$key" "$val")
    done

    local region=$(p6_obj_hash_get "$cfg" "region")
    local o5=$(p6_obj_hash_set "$cfg" "aws_default_region" "$region")
    local o6=$(p6_obj_hash_set "$cfg" "aws_region" "$region")

    p6_return_aws_cfg "$cfg"
}

p6_aws_cfg_kinds() {

    local kinds="_active _source _saved"

    p6_return_words "$kinds"
}

p6_aws_cfg_vars() {

    local env_vars=" \
	  AWS_ORG \
	  AWS_VPC_ID \
	  AWS_ENV_TAG \
	  AWS_ENV \
	  AWS_PROFILE \
	  AWS_DEFAULT_PROFILE \
	  AWS_REGION
	  AWS_DEFAULT_REGION \
	  AWS_CONFIG_FILE \
	  AWS_SHARED_CREDENTIALS_FILE \
	  AWS_CA_BUNDLE \
	  AWS_METADATA_SERVICE_TIMEOUT \
	  AWS_METADATA_SERVICE_NUM_ATTEMPTS"

    p6_return_words "$env_vars"
}

p6_aws_cfg_show() {

    p6_env_list "^AWS_"

    p6_return_void
}

p6_aws_cfg_reset() {

    local kv
    for kv in $(p6_aws_cfg_show); do
	local k=$(p6_echo $kv | cut -f 1 -d '=')
	p6_env_export_un "$k"
    done

    p6_return_void
}

p6_aws_cfg_clear() {

    local kv
    for kv in $(p6_aws_cfg_show | grep -v _saved); do
	local k=$(p6_echo $kv | cut -f 1 -d '=')
	p6_env_export_un "$k"
    done

    p6_return_void
}

p6_aws_cfg_save() {

    p6_aws_cfg__copy "active" "saved"
}

p6_aws_cfg_save_source() {

    p6_aws_cfg__copy "active" "source"
}

p6_aws_cfg_restore_saved() {

    p6_aws_cfg_restore__from "saved"

    p6_return_void
}

p6_aws_cfg_restore_source() {

    p6_aws_cfg_restore__from "source"

    p6_return_void
}

p6_aws_cfg_restore__from() {
    local kind="$1"

    local kv
    for kv in $(p6_aws_cfg_show | grep "_${kind}"); do
	local var=$(echo "$kv" | cut -d = -f 1)

	local var_lc=$(p6_string_lc "$var")
	local fname_all=$(p6_string_replace "$var_lc" "aws_" "")
	local fname=$(p6_string_replace "$fname_all" "_${kind}" "")

	local func="p6_aws_cfg_env_${fname}_${kind}"
	local val=$(p6_run_code "$func")

	local func_active="p6_aws_cfg_env_${fname}_active"
	p6_run_code "$func_active \"$val\""

	p6_env_export_un "$kv"
    done

    p6_return_void
}

p6_aws_cfg__copy() {
    local kind_from="$1"
    local kind_to="$2"

    local var
    for var in $(p6_aws_cfg_vars | grep "$kind_from"); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	local func_from="p6_aws_cfg_env_${fname}_${kind_from}"
	local val=$(p6_run_code "$func_from")

	local func_to="p6_aws_cfg_env_${fname}_${kind_to}"
	p6_run_code "$func_to \"$val\""
    done

    p6_return_void
}

p6_aws_cfg__generate() {

    local var
    for var in $(p6_aws_cfg_vars); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	p6_aws_cfg__generate_kinds "$fname" "$var"
    done

    p6_return_void
}

p6_aws_cfg__generate_kinds() {
    local fname="$1"
    local var="$2"

    local kind
    for kind in $(p6_aws_cfg_kinds); do
	local func=$(p6_aws_cfg__accessor "$kind" "$fname" "$var")
	p6_run_code "$func"
    done

    p6_return_void
}

p6_aws_cfg__accessor() {
    local kind="$1"
    local fname="$2"
    local var="$3"

    local func="${fname}${kind}"

    if [ x"$kind" = x"_active" ]; then
	kind=
    fi

    local code="
p6_aws_cfg_env_${func}() {
    local val=\"\$1\"

    local old=\"\${${var}${kind}}\"

    if ! p6_string_blank \"\$val\"; then
       p6_env_export \"${var}${kind}\" \"\$val\"
    fi

    p6_return_str \"\$old\"
}
"
    p6_return_str "$code"
}
