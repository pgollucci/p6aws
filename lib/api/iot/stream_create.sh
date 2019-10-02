######################################################################
#<
#
# Function:
#	p6_aws_iot_stream_create(stream_id, files, role_arn)
#
#  Args:
#	stream_id - 
#	files - 
#	role_arn - 
#
#>
######################################################################
p6_aws_iot_stream_create() {
    local stream_id="$1"
    local files="$2"
    local role_arn="$3"
    shift 3

    p6_run_write_cmd aws iot create-stream --stream-id $stream_id --files $files --role-arn $role_arn "$@"
}