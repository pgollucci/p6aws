######################################################################
#<
#
# Function:
#	p6_aws_glacier_provisioned_capacity_purchase(account_id)
#
#  Args:
#	account_id - 
#
#>
######################################################################
p6_aws_glacier_provisioned_capacity_purchase() {
    local account_id="$1"
    shift 1

    p6_run_write_cmd aws glacier purchase-provisioned-capacity --account-id $account_id "$@"
}