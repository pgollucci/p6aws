######################################################################
#<
#
# Function:
#	p6_aws_guardduty_threat_intel_sets_list(detector_id)
#
#  Args:
#	detector_id - 
#
#>
######################################################################
p6_aws_guardduty_threat_intel_sets_list() {
    local detector_id="$1"
    shift 1

    p6_run_read_cmd aws guardduty list-threat-intel-sets --detector-id $detector_id "$@"
}