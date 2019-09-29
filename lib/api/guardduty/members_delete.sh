######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_members_delete(detector_id, account_ids)
#
# Arg(s):
#    detector_id - 
#    account_ids - 
#
#
#>
######################################################################
p6_aws_guardduty_members_delete() {
    local detector_id="$1"
    local account_ids="$2"
    shift 2

    p6_run_write_cmd aws guardduty delete-members --detector-id $detector_id --account-ids $account_ids "$@"
}