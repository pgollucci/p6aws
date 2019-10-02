######################################################################
#<
#
# Function:
#	p6_aws_rds_activity_stream_stop(resource_arn)
#
#  Args:
#	resource_arn - 
#
#>
######################################################################
p6_aws_rds_activity_stream_stop() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws rds stop-activity-stream --resource-arn $resource_arn "$@"
}