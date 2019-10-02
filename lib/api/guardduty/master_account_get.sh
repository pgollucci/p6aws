######################################################################
#<
#
# Function:
#	p6_aws_guardduty_master_account_get(detector_id)
#
#  Args:
#	detector_id - 
#
#>
######################################################################
p6_aws_guardduty_master_account_get() {
    local detector_id="$1"
    shift 1

    p6_run_read_cmd aws guardduty get-master-account --detector-id $detector_id "$@"
}