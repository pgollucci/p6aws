######################################################################
#<
#
# Function:
#	p6_aws_shield_drt_role_associate(role_arn)
#
#  Args:
#	role_arn - 
#
#>
######################################################################
p6_aws_shield_drt_role_associate() {
    local role_arn="$1"
    shift 1

    p6_run_write_cmd aws shield associate-drt-role --role-arn $role_arn "$@"
}