######################################################################
#<
#
# Function:
#      = p6_aws_rekognition_stream_processor_delete(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_rekognition_stream_processor_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws rekognition delete-stream-processor --name $name "$@"
}