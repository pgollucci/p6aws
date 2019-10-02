######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_logs_validate(trail_arn, start_time)
#
#  Args:
#	trail_arn - 
#	start_time - 
#
#>
######################################################################
p6_aws_cloudtrail_logs_validate() {
    local trail_arn="$1"
    local start_time="$2"
    shift 2

    p6_run_write_cmd aws cloudtrail validate-logs --trail-arn $trail_arn --start-time $start_time "$@"
}