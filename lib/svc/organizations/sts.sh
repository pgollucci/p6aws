######################################################################
#<
#
# Function: p6_aws_organizations_svc_su_un()
#
#>
######################################################################
p6_aws_organizations_svc_su_un() {

  p6_aws_sts_svc_role_unassume
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_su(account_alias, map_file, region, output, role_full_path, role_session_name, cred_file, src_cred_file, assumed_cred_file, account_name)
#
#  Args:
#	account_alias -
#	map_file -
#	region -
#	output -
#	role_full_path -
#	role_session_name -
#	cred_file -
#	src_cred_file -
#	assumed_cred_file -
#	account_name -
#
#>
######################################################################
p6_aws_organizations_svc_su() {
  local account_name="$1"

  local account_id
  account_id=$(p6_aws_organizations_svc_account_id_from_name "$account_name")

  local new_arn
  new_arn="arn:aws:iam::${account_id}:role/OrganizationAccountAccessRole"
  local role_session_name="tsmile"

  p6_aws_sts_svc_role_assume "$new_arn" "$role_session_name"
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_run_as(account_alias, account_map, region, output, role_name, role_session_name, cred_file, src_cred_file, assumed_cred_file, cmd, ...)
#
#  Args:
#	account_alias -
#	account_map -
#	region -
#	output -
#	role_name -
#	role_session_name -
#	cred_file -
#	src_cred_file -
#	assumed_cred_file -
#	cmd -
#	... - 
#
#>
######################################################################
p6_aws_organizations_svc_run_as() {

  p6_aws_organizations_svc_su

  p6_run_x_cmd

  p6_aws_organizations_svc_su_un
}