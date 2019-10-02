######################################################################
#<
#
# Function:
#	p6_aws_guardduty_detector_delete(detector_id)
#
#  Args:
#	detector_id - 
#
#>
######################################################################
p6_aws_guardduty_detector_delete() {
    local detector_id="$1"
    shift 1

    p6_run_write_cmd aws guardduty delete-detector --detector-id $detector_id "$@"
}