######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_detector_update(detector_id)
#
# Arg(s):
#    detector_id - 
#
#
#>
######################################################################
p6_aws_guardduty_detector_update() {
    local detector_id="$1"
    shift 1

    p6_run_write_cmd aws guardduty update-detector --detector-id $detector_id "$@"
}