######################################################################
#<
#
# Function:
#      = p6_aws_rds_data_transaction_begin(resource_arn, secret_arn)
#
# Arg(s):
#    resource_arn - 
#    secret_arn - 
#
#
#>
######################################################################
p6_aws_rds_data_transaction_begin() {
    local resource_arn="$1"
    local secret_arn="$2"
    shift 2

    p6_run_write_cmd aws rds-data begin-transaction --resource-arn $resource_arn --secret-arn $secret_arn "$@"
}