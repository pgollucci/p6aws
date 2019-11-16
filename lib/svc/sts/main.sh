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

  p6_file_exists $creds || return

  local mtime=$(p6_dt_mtime "$creds")
  local now=$(p6_dt_now_epoch_seconds)
  local diff=$(($now-$mtime))

  local str
  if [ $diff -gt 7200 ]; then
    str=""
  elif [ $diff -gt 3600 ]; then
    str="sts:\t$diff"
  elif [ $diff -gt 3500 ]; then
    str="sts:\t$diff"
  else
    str="sts:\t$diff"
  fi

  p6_msg "$str"
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

    local type="aws"
    local region=$(p6_aws_sts_svc_region)

    p6_file_rmf "$HOME/.aws/credentials"
    p6_aws_cfg_reset

    # XXX: shell me
    sts.py --provider jc --nicks "${type}-${account_alias}" --login $login --region $region --outputformat json
    perl -pi -e "s,\[.*-,\[$account_alias-," $HOME/.aws/credentials
    # XXX: end shell me

    p6_aws_shortcuts_gen "$org" "$HOME/.aws/credentials"

    p6_return_void
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

    p6_aws_cfg_save_source

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

    p6_return_void
}