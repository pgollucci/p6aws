######################################################################
#<
#
# Function:
#	p6_aws_guardduty_monitoring_members_stop(detector_id, account_ids)
#
#  Args:
#	detector_id - 
#	account_ids - 
#
#>
######################################################################
p6_aws_guardduty_monitoring_members_stop() {
    local detector_id="$1"
    local account_ids="$2"
    shift 2

    p6_run_write_cmd aws guardduty stop-monitoring-members --detector-id $detector_id --account-ids $account_ids "$@"
}