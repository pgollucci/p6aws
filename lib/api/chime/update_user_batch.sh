######################################################################
#<
#
# Function:
#	p6_aws_chime_update_user_batch(account_id, update_user_request_items)
#
#  Args:
#	account_id - 
#	update_user_request_items - 
#
#>
######################################################################
p6_aws_chime_update_user_batch() {
    local account_id="$1"
    local update_user_request_items="$2"
    shift 2

    p6_run_write_cmd aws chime batch-update-user --account-id $account_id --update-user-request-items $update_user_request_items "$@"
}