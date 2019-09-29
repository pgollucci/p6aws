######################################################################
#<
#
# Function:
#      = p6_aws_rekognition_stream_processor_start(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_rekognition_stream_processor_start() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws rekognition start-stream-processor --name $name "$@"
}