######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_findings_list(detector_id)
#
# Arg(s):
#    detector_id - 
#
#
#>
######################################################################
p6_aws_guardduty_findings_list() {
    local detector_id="$1"
    shift 1

    p6_run_read_cmd aws guardduty list-findings --detector-id $detector_id "$@"
}