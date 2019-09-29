######################################################################
#<
#
# Function:
#      = p6_aws_chime_phone_number_from_user_disassociate(account_id, user_id)
#
# Arg(s):
#    account_id - 
#    user_id - 
#
#
#>
######################################################################
p6_aws_chime_phone_number_from_user_disassociate() {
    local account_id="$1"
    local user_id="$2"
    shift 2

    p6_run_write_cmd aws chime disassociate-phone-number-from-user --account-id $account_id --user-id $user_id "$@"
}