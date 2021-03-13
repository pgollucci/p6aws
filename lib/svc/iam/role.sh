######################################################################
#<
#
# Function: p6_aws_svc_iam_role_policies(role_name)
#
#  Args:
#	role_name -
#
#>
######################################################################
p6_aws_svc_iam_role_policies() {
   local role_name="$1"

   p6_aws_cli_cmd iam list-attached-role-policies \
	      --output text \
	      --role-name $role_name \
	      --query "'AttachedPolicies[].[PolicyName]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_iam_roles_list()
#
#>
######################################################################
p6_aws_svc_iam_roles_list() {

    p6_aws_cli_cmd iam list-roles \
	       --output text \
	       --query "'Roles[].[RoleId,RoleName,Arn]'"
}