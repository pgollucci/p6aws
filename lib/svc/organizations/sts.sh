######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_su_un()
#
#>
######################################################################
p6_aws_svc_organizations_sts_su_un() {

  p6_aws_svc_sts_role_assume_un
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_su(account_alias)
#
#  Args:
#	account_alias -
#
#>
######################################################################
p6_aws_svc_organizations_sts_su() {
  local account_alias="$1"

  local account_id
  account_id=$(p6_aws_svc_organizations_account_id_from_account_alias "$account_alias")

  local new_arn
  new_arn="arn:aws:iam::${account_id}:role/OrganizationAccountAccessRole"
  local role_session_name="p6cli"

  p6_aws_svc_sts_role_assume "$new_arn" "$role_session_name"
}

######################################################################
#<
#
# Function: p6_aws_svc_organizations_sts_run_as(account_alias, ...)
#
#  Args:
#	account_alias -
#	... -
#
#>
######################################################################
p6_aws_svc_organizations_sts_run_as() {
  local account_alias="$1"
  shift 1

  p6_aws_svc_organizations_sts_su "$account_alias"

  p6_run_yield "$*"

  p6_aws_svc_organizations_sts_su_un
}
