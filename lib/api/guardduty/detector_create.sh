######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_detector_create(enable)
#
# Arg(s):
#    enable - 
#
#
#>
######################################################################
p6_aws_guardduty_detector_create() {
    local enable="$1"
    shift 1

    p6_run_write_cmd aws guardduty create-detector --enable $enable "$@"
}