###################################################################################
#<
# cfg - C style object with accessor API
#
# Represents the *current* "role", sts profile, iam user, credentials
# N.B: You may be arbitrarly levels of assuming deep
#
# Attributes:
#  - region
#  - output
#  - account_id
#  - account_name
#  - role_full_path
#  - role_session_name
#  - [org]
#  - [vpc_id]
#  - [env]
#  - [env_level]
#
#  Credential State
#   - config file
#   - credential file
#   - profile
#
#   Non Accessible: access_key, secret_access_key, session_token
#
# ENVs: AWS_ORG, AWS_VPC,
# ENVs: AWS_ENV_TAG, AWS_ENV,
# ENVs: AWS_PROFILE,
# ENVs: AWS_DEFAULT_PROFILE, AWS_DEFAULT_REGION
#>
####################################################################################
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

p6_aws_cfg_kinds() {

    local kinds="'' _source _saved"

    p6_return "$kinds"
}

p6_aws_cfg_vars() {

    local env_vars=" \
	  AWS_ORG \
	  AWS_VPC_ID \
	  AWS_ENV_TAG \
	  AWS_ENV \
	  AWS_PROFILE \
	  AWS_DEFAULT_PROFILE \
	  AWS_DEFAULT_REGION"

    p6_return "$env_vars"
}

p6_aws_cfg_show() {

    p6_env_list "^AWS_"
}

p6_aws_cfg_reset() {

    local kv
    for kv in $(p6_aws_cfg_show); do
	local k=$(echo $kv | cut -f 1 -d '=')
	eval "p6_env_export_un $k"
    done
}

p6_aws_cfg_clear() {

    local kv
    for kv in $(p6_aws_cfg_show | grep -v _saved); do
	local k=$(echo $kv | cut -f 1 -d '=')
	eval "p6_env_export_un $k"
    done
}

p6_aws_cfg_save() {

    local var
    for var in $(p6_aws_cfg_vars | egrep -v '_source|_saved'); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	p6_aws_cfg_${fname}_saved "${$var}"
    done
}

p6_aws_cfg_restore_saved() {

    local var
    for var in $(p6_aws_cfg_vars | grep _saved); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	p6_aws_cfg_${fname} "${$var}"
    done
}

p6_aws_cfg_restore_source() {

    local var
    for var in $(p6_aws_cfg_vars | grep _source); do
	local var_lc=$(p6_string_lc "$var")
	local fname=$(p6_string_replace "$var_lc" "aws_" "")

	p6_aws_cfg_${fname} "${$var}"
    done
}

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
