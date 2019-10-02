######################################################################
#<
#
# Function:
#	p6_aws_configservice_aggregation_authorization_delete(authorized_account_id, authorized_aws_region)
#
#  Args:
#	authorized_account_id - 
#	authorized_aws_region - 
#
#>
######################################################################
p6_aws_configservice_aggregation_authorization_delete() {
    local authorized_account_id="$1"
    local authorized_aws_region="$2"
    shift 2

    p6_run_write_cmd aws configservice delete-aggregation-authorization --authorized-account-id $authorized_account_id --authorized-aws-region $authorized_aws_region "$@"
}