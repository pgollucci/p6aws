######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_findings_feedback_update(detector_id, finding_ids, feedback)
#
# Arg(s):
#    detector_id - 
#    finding_ids - 
#    feedback - 
#
#
#>
######################################################################
p6_aws_guardduty_findings_feedback_update() {
    local detector_id="$1"
    local finding_ids="$2"
    local feedback="$3"
    shift 3

    p6_run_write_cmd aws guardduty update-findings-feedback --detector-id $detector_id --finding-ids $finding_ids --feedback $feedback "$@"
}