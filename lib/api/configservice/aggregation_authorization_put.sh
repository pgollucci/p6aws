######################################################################
#<
#
# Function:
#      = p6_aws_configservice_aggregation_authorization_put(authorized_account_id, authorized_aws_region)
#
# Arg(s):
#    authorized_account_id - 
#    authorized_aws_region - 
#
#
#>
######################################################################
p6_aws_configservice_aggregation_authorization_put() {
    local authorized_account_id="$1"
    local authorized_aws_region="$2"
    shift 2

    p6_run_write_cmd aws configservice put-aggregation-authorization --authorized-account-id $authorized_account_id --authorized-aws-region $authorized_aws_region "$@"
}