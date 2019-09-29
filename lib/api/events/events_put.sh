######################################################################
#<
#
# Function:
#      = p6_aws_events_events_put(entries)
#
# Arg(s):
#    entries - 
#
#
#>
######################################################################
p6_aws_events_events_put() {
    local entries="$1"
    shift 1

    p6_run_write_cmd aws events put-events --entries $entries "$@"
}