######################################################################
#<
#
# Function:
#	p6_aws_rekognition_stream_processor_stop(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_rekognition_stream_processor_stop() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws rekognition stop-stream-processor --name $name "$@"
}