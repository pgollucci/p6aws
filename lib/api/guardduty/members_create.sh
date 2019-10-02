######################################################################
#<
#
# Function:
#	p6_aws_guardduty_members_create(detector_id, account_details)
#
#  Args:
#	detector_id - 
#	account_details - 
#
#>
######################################################################
p6_aws_guardduty_members_create() {
    local detector_id="$1"
    local account_details="$2"
    shift 2

    p6_run_write_cmd aws guardduty create-members --detector-id $detector_id --account-details $account_details "$@"
}