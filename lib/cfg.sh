######################################################################
#<
#
# Function: p6_aws_cfg__debug(msg)
#
#  Args:
#	msg -
#
#>
######################################################################
p6_aws_cfg__debug() {
    local msg="$1"

    p6_aws__debug "cfg: $msg"

    p6_return_void
}

######################################################################
#<
#
# Function: str str = p6_aws_cfg_prompt_info(kind)
#
#  Args:
#	kind -
#
#  Returns:
#	str - str
#
#>
######################################################################
p6_aws_cfg_prompt_info() {
    local kind="$1"

    local profile=$(p6_aws_cfg_env_profile${kind})
    local region=$(p6_aws_cfg_env_region${kind})
    local vpc_id=$(p6_aws_cfg_env_vpc_id${kind})

    local str
    if ! p6_string_blank "$profile"; then
	local str="aws:\t  ${kind}:$profile [$region] ($vpc_id)"
    fi

    p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6_aws_cfg_realize(cfg)
#
#  Args:
#	cfg -
#
#>
######################################################################
p6_aws_cfg_realize() {
    local cfg="$1"

    p6_obj_iter_foreach "$cfg" "k"  "p6_aws_cfg_env_%%key%%_active" "p6_aws_cfg_filter_secret" > /dev/null

    p6_return_void
}

######################################################################
#<
#
# Function: code rc = p6_aws_cfg_filter_secret(val)
#
#  Args:
#	val -
#
#  Returns:
#	code - rc
#
#>
######################################################################
p6_aws_cfg_filter_secret() {
    local val="$1"

    local rc=
    case $val in
	session_token|access_key_id|secret_access_key) rc=$P6_FALSE ;;
	*) rc=$P6_TRUE ;;
    esac

    p6_aws_cfg__debug "filter_secret(): [val=$val] -> [rc=$rc]"

    p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function: words kinds = p6_aws_cfg_kinds()
#
#  Returns:
#	words - kinds
#
#>
######################################################################
p6_aws_cfg_kinds() {

    local kinds="_active _source _saved"

    p6_return_words "$kinds"
}

######################################################################
#<
#
# Function: words env_vars = p6_aws_cfg_vars_min()
#
#  Returns:
#	words - env_vars
#
#>
######################################################################
p6_aws_cfg_vars_min() {

    local env_vars=" \
	  AWS_ORG \
	  AWS_DEFAULT_PROFILE \
	  AWS_DEFAULT_REGION"

    p6_return_words "$env_vars"
}

######################################################################
#<
#
# Function: words env_vars = p6_aws_cfg_vars_secret()
#
#  Returns:
#	words - env_vars
#
#>
######################################################################
p6_aws_cfg_vars_secret() {

    local env_vars=" \
	  AWS_SESSION_TOKEN \
	  AWS_ACCESS_KEY_ID \
	  AWS_SECRET_ACCESS_KEY"

    p6_return_words "$env_vars"
}

######################################################################
#<
#
# Function: words env_vars = p6_aws_cfg_vars()
#
#  Returns:
#	words - env_vars
#
#>
######################################################################
p6_aws_cfg_vars() {

    local env_vars=" \
	  AWS_VPC_ID \
	  AWS_ENV_TAG \
	  AWS_ENV \
	  AWS_PROFILE \
	  AWS_REGION
	  AWS_CONFIG_FILE \
	  AWS_SHARED_CREDENTIALS_FILE \
	  AWS_CA_BUNDLE \
	  AWS_METADATA_SERVICE_TIMEOUT \
	  AWS_METADATA_SERVICE_NUM_ATTEMPTS \
	  AWS_OUTPUT"

    env_vars="$env_vars $(p6_aws_cfg_vars_secret) $(p6_aws_cfg_vars_min)"

    p6_return_words "$env_vars"
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

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_save()
#
#>
######################################################################
p6_aws_cfg_save() {

    p6_aws_cfg__copy "active" "saved"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_save_source()
#
#>
######################################################################
p6_aws_cfg_save_source() {

    p6_aws_cfg__copy "active" "source"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_restore_saved()
#
#>
######################################################################
p6_aws_cfg_restore_saved() {

    p6_aws_cfg_restore__from "saved"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_restore_source()
#
#>
######################################################################
p6_aws_cfg_restore_source() {

    p6_aws_cfg_restore__from "source"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_restore__from(kind)
#
#  Args:
#	kind -
#
#>
######################################################################
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

######################################################################
#<
#
# Function: p6_aws_cfg__copy(kind_from, kind_to)
#
#  Args:
#	kind_from -
#	kind_to -
#
#>
######################################################################
p6_aws_cfg__copy() {
    local kind_from="$1"
    local kind_to="$2"

    local var
    for var in $(p6_aws_cfg_vars); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	local func_from="p6_aws_cfg_env_${fname}_${kind_from}"
	local val=$(p6_run_code "$func_from")

	local func_to="p6_aws_cfg_env_${fname}_${kind_to}"
	p6_aws_cfg__debug "__copy(): [from=$func_from] -> [to=$func_to]"

	p6_run_code "$func_to \"$val\""
    done

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg__generate()
#
#>
######################################################################
p6_aws_cfg__generate() {

    local var
    for var in $(p6_aws_cfg_vars | sort); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	p6_aws_cfg__generate_kinds "$fname" "$var"
    done

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg__generate_kinds(fname, var)
#
#  Args:
#	fname -
#	var -
#
#>
######################################################################
p6_aws_cfg__generate_kinds() {
    local fname="$1"
    local var="$2"

    local kind
    for kind in $(p6_aws_cfg_kinds | sort); do
	local func=$(p6_aws_cfg__accessor "$kind" "$fname" "$var")
	p6_msg "$func"
    done

    p6_return_void
}

######################################################################
#<
#
# Function: str code = p6_aws_cfg__accessor(kind, fname, ovar)
#
#  Args:
#	kind -
#	fname -
#	ovar -
#
#  Returns:
#	str - code
#
#>
######################################################################
p6_aws_cfg__accessor() {
    local kind="$1"
    local fname="$2"
    local ovar="$3"

    local func="${fname}${kind}"

    if p6_string_eq "$kind" "_active"; then
	kind=
    fi

    local var="${ovar}${kind}"

    local code=$(p6_aws_template_process \
		     "cfg/accessor.tmpl" \
		     "FUNC=$func" \
		     "VAR=$var"
	  )

    p6_return_str "$code"
}