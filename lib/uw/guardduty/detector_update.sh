######################################################################
#<
#
# Function:
#	p6_aws_guardduty_enable(detector_id)
#
#  Args:
#	detector_id - 
#
#>
######################################################################
p6_aws_guardduty_enable() {
        local detector_id="$1"
        shift 1

    cond_log_and_run aws guardduty update-detector --detector-id $detector_id --enable "$@"
}