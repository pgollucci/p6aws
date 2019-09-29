######################################################################
#<
#
# Function:
#      = p6_aws_cloudtrail_events_lookup()
#
#
#
#>
######################################################################
p6_aws_cloudtrail_events_lookup() {

    p6_run_write_cmd aws cloudtrail lookup-events "$@"
}