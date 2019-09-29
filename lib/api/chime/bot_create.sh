######################################################################
#<
#
# Function:
#      = p6_aws_chime_bot_create(account_id, display_name)
#
# Arg(s):
#    account_id - 
#    display_name - 
#
#
#>
######################################################################
p6_aws_chime_bot_create() {
    local account_id="$1"
    local display_name="$2"
    shift 2

    p6_run_write_cmd aws chime create-bot --account-id $account_id --display-name $display_name "$@"
}