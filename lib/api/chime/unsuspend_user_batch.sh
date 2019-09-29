######################################################################
#<
#
# Function:
#      = p6_aws_chime_unsuspend_user_batch(account_id, user_id_list)
#
# Arg(s):
#    account_id - 
#    user_id_list - 
#
#
#>
######################################################################
p6_aws_chime_unsuspend_user_batch() {
    local account_id="$1"
    local user_id_list="$2"
    shift 2

    p6_run_write_cmd aws chime batch-unsuspend-user --account-id $account_id --user-id-list $user_id_list "$@"
}