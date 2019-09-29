######################################################################
#<
#
# Function:
#      = p6_aws_kinesisvideo_stream_delete(stream_arn)
#
# Arg(s):
#    stream_arn - 
#
#
#>
######################################################################
p6_aws_kinesisvideo_stream_delete() {
    local stream_arn="$1"
    shift 1

    p6_run_write_cmd aws kinesisvideo delete-stream --stream-arn $stream_arn "$@"
}