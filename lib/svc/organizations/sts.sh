######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_su_un()
#
#>
######################################################################
p6_aws_svc_organizations_sts_su_un() {

  p6_aws_svc_sts_role_assume_un

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_su(account_name_or_account_id)
#
#  Args:
#	account_name_or_account_id -
#
#>
######################################################################
p6_aws_svc_organizations_sts_su() {
  local account_name_or_account_id="$1"

  local account_id
  case $account_name_or_account_id in
  *[0-9]*) account_id=$account_name_or_account_id ;;
  *) account_id=$(p6_aws_svc_organizations_account_id_from_account_name "$account_name_or_account_id") ;;
  esac

  local role_session_name="p6cli"
  local new_arn
  new_arn="arn:aws:iam::${account_id}:role/OrganizationAccountAccessRole"

  p6_aws_svc_sts_role_assume "$new_arn" "$role_session_name"

  p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_run_as(account_name_or_account_id, ...)
#
#  Args:
#	account_name_or_account_id -
#	... - 
#
#>
######################################################################
p6_aws_svc_organizations_sts_run_as() {
  local account_name_or_account_id="$1"
  shift 1

  p6_aws_svc_organizations_sts_su "$account_name_or_account_id"

  p6_run_yield "$*"

  p6_aws_svc_organizations_sts_su_un

  p6_return_void
}
