######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_findings_get(detector_id, finding_ids)
#
# Arg(s):
#    detector_id - 
#    finding_ids - 
#
#
#>
######################################################################
p6_aws_guardduty_findings_get() {
    local detector_id="$1"
    local finding_ids="$2"
    shift 2

    p6_run_read_cmd aws guardduty get-findings --detector-id $detector_id --finding-ids $finding_ids "$@"
}