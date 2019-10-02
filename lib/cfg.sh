######################################################################
#<
#
# Function:
#	p6_aws_cfg_active(profile, region, env, vpc_id, type)
#
#  Args:
#	profile -
#	region -
#	env -
#	vpc_id -
#	type -
#
#>
######################################################################
p6_aws_cfg_active() {
    local profile="$1"
    local region="$2"
    local env="$3"
    local vpc_id="$4"
    local type="$5"

    for var in $(p6_aws_cfg_vars | egrep -v '_source|_saved'); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	local val=$(p6_obj_hash_get "$cfg" "$fname")

	p6_aws_cfg_${fname} "$val"
    done
}

######################################################################
#<
#
# Function:
#	unkown kinds = p6_aws_cfg_kinds()
#
#  Returns:
#	unkown - kinds
#
#>
######################################################################
p6_aws_cfg_kinds() {

    local kinds="'' _source _saved"

    p6_return "$kinds"
}

######################################################################
#<
#
# Function:
#	unkown env_vars = p6_aws_cfg_vars()
#
#  Returns:
#	unkown - env_vars
#
#/ Ceveats (secrets are intentionally excluded)
#/ #AWS_ACCESS_KEY_ID
#/ AWS_SECRET_ACCESS_KEY
#/ AWS_SESSION_TOKEN
#
#>
######################################################################
p6_aws_cfg_vars() {

    local env_vars=" \
	  AWS_ORG \
	  AWS_VPC_ID \
	  AWS_ENV_TAG \
	  AWS_ENV \
	  AWS_PROFILE \
	  AWS_DEFAULT_PROFILE \
	  AWS_DEFAULT_REGION \
	  AWS_CONFIG_FILE \
	  AWS_SHARED_CREDENTIALS_FILE \
	  AWS_CA_BUNDLE \
	  AWS_METADATA_SERVICE_TIMEOUT \
	  AWS_METADATA_SERVICE_NUM_ATTEMPTS"

    p6_return "$env_vars"
}


######################################################################
#<
#
# Function:
#	p6_aws_cfg_show()
#
#>
######################################################################
p6_aws_cfg_show() {

    p6_env_list "^AWS_"
}

######################################################################
#<
#
# Function:
#	p6_aws_cfg_reset()
#
#>
######################################################################
p6_aws_cfg_reset() {

    local kv
    for kv in $(p6_aws_cfg_show); do
	local k=$(echo $kv | cut -f 1 -d '=')
	eval "p6_env_export_un $k"
    done
}

######################################################################
#<
#
# Function:
#	p6_aws_cfg_clear()
#
#>
######################################################################
p6_aws_cfg_clear() {

    local kv
    for kv in $(p6_aws_cfg_show | grep -v _saved); do
	local k=$(echo $kv | cut -f 1 -d '=')
	eval "p6_env_export_un $k"
    done
}

######################################################################
#<
#
# Function:
#	p6_aws_cfg_save()
#
#>
######################################################################
p6_aws_cfg_save() {

    local var
    for var in $(p6_aws_cfg_vars | egrep -v '_source|_saved'); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	p6_aws_cfg_${fname}_saved "${$var}"
    done
}

######################################################################
#<
#
# Function:
#	p6_aws_cfg_restore_saved()
#
#>
######################################################################
p6_aws_cfg_restore_saved() {

    local var
    for var in $(p6_aws_cfg_vars | grep _saved); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	p6_aws_cfg_${fname} "${$var}"
    done
}

######################################################################
#<
#
# Function:
#	p6_aws_cfg_restore_source()
#
#>
######################################################################
p6_aws_cfg_restore_source() {

    local var
    for var in $(p6_aws_cfg_vars | grep _source); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	p6_aws_cfg_${fname} "${$var}"
    done
}

######################################################################
#<
#
# Function:
#	p6_aws_cfg__generate()
#
#>
######################################################################
p6_aws_cfg__generate() {

    local var
    for var in $(p6_aws_cfg_vars); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	local kind
	for kind in $(p6_aws_cfg_kinds); do
	    local func=$(
		p6_template_process "$P6_DFZ_SRC_P6M7G8_DIR/p6aws/tmpl/cfg/accessor.tmpl" \
				    "FNAME=${fname}${kind}" \
				    "VAR=${var}${kind}"
		  )
	    eval "$func"
	done
    done
}
