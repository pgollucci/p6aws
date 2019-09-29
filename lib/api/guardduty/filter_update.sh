######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_filter_update(detector_id, filter_name)
#
# Arg(s):
#    detector_id - 
#    filter_name - 
#
#
#>
######################################################################
p6_aws_guardduty_filter_update() {
    local detector_id="$1"
    local filter_name="$2"
    shift 2

    p6_run_write_cmd aws guardduty update-filter --detector-id $detector_id --filter-name $filter_name "$@"
}