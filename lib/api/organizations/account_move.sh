######################################################################
#<
#
# Function:
#	p6_aws_organizations_account_move(account_id, source_parent_id, destination_parent_id)
#
#  Args:
#	account_id - 
#	source_parent_id - 
#	destination_parent_id - 
#
#>
######################################################################
p6_aws_organizations_account_move() {
    local account_id="$1"
    local source_parent_id="$2"
    local destination_parent_id="$3"
    shift 3

    p6_run_write_cmd aws organizations move-account --account-id $account_id --source-parent-id $source_parent_id --destination-parent-id $destination_parent_id "$@"
}