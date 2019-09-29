######################################################################
#<
#
# Function:
#      = p6_aws_chime_phone_number_with_user_associate(account_id, user_id, e164_phone_number)
#
# Arg(s):
#    account_id - 
#    user_id - 
#    e164_phone_number - 
#
#
#>
######################################################################
p6_aws_chime_phone_number_with_user_associate() {
    local account_id="$1"
    local user_id="$2"
    local e164_phone_number="$3"
    shift 3

    p6_run_write_cmd aws chime associate-phone-number-with-user --account-id $account_id --user-id $user_id --e164-phone-number $e164_phone_number "$@"
}