######################################################################
#<
#
# Function:
#	p6_aws_guardduty_findings_unarchive(detector_id, finding_ids)
#
#  Args:
#	detector_id - 
#	finding_ids - 
#
#>
######################################################################
p6_aws_guardduty_findings_unarchive() {
    local detector_id="$1"
    local finding_ids="$2"
    shift 2

    p6_run_write_cmd aws guardduty unarchive-findings --detector-id $detector_id --finding-ids $finding_ids "$@"
}