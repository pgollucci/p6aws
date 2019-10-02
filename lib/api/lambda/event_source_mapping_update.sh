######################################################################
#<
#
# Function:
#	p6_aws_lambda_event_source_mapping_update(uuid)
#
#  Args:
#	uuid - 
#
#>
######################################################################
p6_aws_lambda_event_source_mapping_update() {
    local uuid="$1"
    shift 1

    p6_run_write_cmd aws lambda update-event-source-mapping --uuid $uuid "$@"
}