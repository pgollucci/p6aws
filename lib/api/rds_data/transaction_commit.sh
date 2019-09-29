######################################################################
#<
#
# Function:
#      = p6_aws_rds_data_transaction_commit(resource_arn, secret_arn, transaction_id)
#
# Arg(s):
#    resource_arn - 
#    secret_arn - 
#    transaction_id - 
#
#
#>
######################################################################
p6_aws_rds_data_transaction_commit() {
    local resource_arn="$1"
    local secret_arn="$2"
    local transaction_id="$3"
    shift 3

    p6_run_write_cmd aws rds-data commit-transaction --resource-arn $resource_arn --secret-arn $secret_arn --transaction-id $transaction_id "$@"
}