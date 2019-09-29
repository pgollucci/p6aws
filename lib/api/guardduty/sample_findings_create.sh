######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_sample_findings_create(detector_id)
#
# Arg(s):
#    detector_id - 
#
#
#>
######################################################################
p6_aws_guardduty_sample_findings_create() {
    local detector_id="$1"
    shift 1

    p6_run_write_cmd aws guardduty create-sample-findings --detector-id $detector_id "$@"
}