######################################################################
#<
#
# Function: p6_aws_sts__debug(msg)
#
#  Args:
#	msg - 
#
#>
######################################################################
p6_aws_sts__debug() {
    local msg="$1"

    p6_aws__debug "sts: $msg"
}

######################################################################
#<
#
# Function: p6_aws_sts_prompt_info(creds)
#
#  Args:
#	creds - 
#
#>
######################################################################
p6_aws_sts_prompt_info() {
  local creds="$1"

  if p6_file_exists "$creds"; then
      local mtime=$(p6_dt_mtime "$creds")
      local now=$(p6_dt_now_epoch_seconds)
      local diff=$(p6_math_sub "$now" "$time")

      local str
      if p6_math_gt "$diff" "7200"; then
	  str=""
      elif p6_math_gt "$diff" "3600"; then
	  str=$(p6_color_ize "red" "black" "sts:\t$diff")
      elif p6_math_gt "$diff" "3500"; then
	  str=$(p6_color_ize "yellow" "black" "sts:\t$diff")
      else
	  str="sts:\t$diff"
      fi

      p6_msg "$str"
  fi

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_sts_svc_whoami()
#
#>
######################################################################
p6_aws_sts_svc_whoami() {

    p6_aws_cmd sts get-caller-identity

    p6_return_void
}

######################################################################
#<
#
# Function: str region = p6_aws_sts_svc_region()
#
#  Returns:
#	str - region
#
#>
######################################################################
p6_aws_sts_svc_region() {

    local region=$(p6_aws_cfg_env_region_active)
    if p6_string_blank "$region"; then
	region=us-east-1
    fi

    p6_return_str "$region"
}

######################################################################
#<
#
# Function: str output = p6_aws_sts_svc_output()
#
#  Returns:
#	str - output
#
#>
######################################################################
p6_aws_sts_svc_output() {

    local output=$(p6_aws_cfg_env_output_active)
    if p6_string_blank "$output"; then
	output=json
    fi

    p6_return_str "$output"
}

######################################################################
#<
#
# Function: path file = p6_aws_sts_svc_cred_file()
#
#  Returns:
#	path - file
#
#>
######################################################################
p6_aws_sts_svc_cred_file() {

    local file=$(p6_aws_cfg_env_shared_credentials_file_active)
    if p6_string_blank "$file"; then
	local dir=$(p6_aws_sts_svc_dir)
	file=$dir/credentials
    fi

    p6_return_path "$file"
}

######################################################################
#<
#
# Function: str org = p6_aws_sts_svc_org()
#
#  Returns:
#	str - org
#
#>
######################################################################
p6_aws_sts_svc_org() {

    local org=$(p6_aws_cfg_env_org_active)
    if p6_string_blank "$org"; then
	org=$P6_AWS_ORG
    fi

    p6_return_str "$org"
}

######################################################################
#<
#
# Function: path dir = p6_aws_sts_svc_dir()
#
#  Returns:
#	path - dir
#
#>
######################################################################
p6_aws_sts_svc_dir() {

    local dir=$AWS_DIR
    if p6_string_blank "$dir"; then
	dir=$HOME/.aws
    fi

    p6_return_path "$dir"
}

######################################################################
#<
#
# Function: p6_aws_sts_svc_login(login, [account_alias=$AWS_ORG], [org=$AWS_ORG])
#
#  Args:
#	login - 
#	OPTIONAL account_alias -  [$AWS_ORG]
#	OPTIONAL org -  [$AWS_ORG]
#
#>
######################################################################
p6_aws_sts_svc_login() {
    local login="$1"
    local account_alias="${2:-$AWS_ORG}"
    local org="${3:-$AWS_ORG}"

    local region=$(p6_aws_sts_svc_region)
    local output=$(p6_aws_sts_svc_output)
    local cred_file=$(p6_aws_sts_svc_cred_file)

    p6_msg "Password($login): \c"
    local password=$(p6_int_password_read)

    local auth=$(p6_obj_create "hash")
    local o1=$(p6_obj_item_set "$auth" "login" "$login")
    local o2=$(p6_obj_item_set "$auth" "password" "$password")
    local o3=$(p6_obj_item_set "$auth" "account_alias" "$account_alias")
    local o4=$(p6_obj_item_set "$auth" "org" "$org")
    local o5=$(p6_obj_item_set "$auth" "region" "$region")
    local o6=$(p6_obj_item_set "$auth" "output" "$output")

    p6_file_rmf "$cred_file"
    p6_aws_cfg_reset

    local assertion64=$(p6_aws_sts_svc_saml_login "$auth")
    p6_aws_sts_svc_assertion_to_cred_file "$auth" "$assertion64"

    p6_aws_shortcuts_gen "$org" "$cred_file"

    p6_return_void
}

######################################################################
#<
#
# Function: str assertion64 = p6_aws_sts_svc_saml_login(auth)
#
#  Args:
#	auth - 
#
#  Returns:
#	str - assertion64
#
#>
######################################################################
p6_aws_sts_svc_saml_login() {
    local auth="$1"

    local idp="jc"

    local assertion64
    case $idp in
	jc) assertion64=$(p6_jc_saml_login "$auth") ;;
	*) p6_error "not implemented" ;;
    esac

    p6_return_str "$assertion64"
}

######################################################################
#<
#
# Function: p6_aws_sts_svc_assertion_to_cred_file(auth, assertion64)
#
#  Args:
#	auth - 
#	assertion64 - 
#
#>
######################################################################
p6_aws_sts_svc_assertion_to_cred_file() {
    local auth="$1"
    local assertion64="$2"

    local role_provider=$(p6_echo "$assertion64" | base64 -D | sed -e 's,.*>arn,arn,' -e 's,\<.*,,')
    p6_aws_sts__debug "assertion_to_cred_file(): [role_provider=$role_provider]"

    local role_arn=$(p6_echo "$role_provider" | cut -d , -f 1)
    local principal_arn=$(p6_echo "$role_provider" | cut -d , -f 2)
    p6_aws_sts__debug "assertion_to_cred_file(): [role_arn=$role_arn]"
    p6_aws_sts__debug "assertion_to_cred_file(): [principal_arn=$principal_arn]"

    local dir=$(p6_transient_create "aws-sts.jc")
    local json_file=$dir/assume.json

    p6_aws_cmd sts assume-role-with-saml --role-arn "$role_arn" --principal-arn "$principal_arn" --saml-assertion "$assertion64" > $json_file

    local aws_access_key_id=$(p6_json_key_2_value "AccessKeyId" "$json_file")
    local aws_secret_access_key=$(p6_json_key_2_value "SecretAccessKey" "$json_file")
    local aws_session_token=$(p6_json_key_2_value "SessionToken" "$json_file")
    local expiration=$(p6_json_key_2_value "Expiration" "$json_file")

    p6_transient_delete "$dir"

    local account_alias=$(p6_obj_item_get "$auth" "account_alias")
    local org=$(p6_obj_item_get "$auth" "org")
    local region=$(p6_obj_item_get "$auth" "region")
    local output=$(p6_obj_item_get "$auth" "output")

    local fn_profile=$(p6_aws_sts_svc_profile_build "$org" "$account_alias" "$role_arn")

    local cred_file=$(p6_aws_sts_svc_cred_file)
    p6_aws_template_process "sts/profile" \
			    "PROFILE=$fn_profile" \
			    "REGION=$region" \
			    "OUTPUT=$output" \
			    "AWS_ACCESS_KEY=$aws_access_key_id" \
			    "AWS_SECRET_ACCESS_KEY=$aws_secret_access_key" \
			    "AWS_SESSION_TOKEN=$aws_session_token" \
			    "EXPIRATION=$expiration" > $cred_file

    p6_return_void
}

######################################################################
#<
#
# Function: str fn_profile = p6_aws_sts_svc_profile_build(org, account_alias, role_arn)
#
#  Args:
#	org - 
#	account_alias - 
#	role_arn - 
#
#  Returns:
#	str - fn_profile
#
#>
######################################################################
p6_aws_sts_svc_profile_build() {
    local org="$1"
    local account_alias="$2"
    local role_arn="$3"

    local role_name=$(p6_echo "$role_arn" | sed -e 's,.*:,,')

    local profile="${org}+${account_alias}-${role_name}"
    local fn_profile=$(p6_aws_shortcuts_profile_to_fn "$profile")

    p6_aws_sts__debug "profile_build(): [profile=$fn_profile]"

    p6_return_str "$fn_profile"
}

######################################################################
#<
#
# Function: p6_aws_sts_svc_role_assume(role_arn, role_session_name)
#
#  Args:
#	role_arn - 
#	role_session_name - 
#
#>
######################################################################
p6_aws_sts_svc_role_assume() {
    local role_arn="$1"
    local role_session_name="$2"

    # save it
    p6_aws_cfg_save_source

    # assume it or fail

    # clear
    p6_aws_cfg_clear

    # set env to assume

    # OPTIONAL: generate a shortcut func

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_sts_svc_role_unassume()
#
#>
######################################################################
p6_aws_sts_svc_role_unassume() {

    p6_aws_cfg_restore_source

    p6_return_void
}