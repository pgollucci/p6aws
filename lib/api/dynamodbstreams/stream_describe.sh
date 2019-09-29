######################################################################
#<
#
# Function:
#      = p6_aws_dynamodbstreams_stream_describe(stream_arn)
#
# Arg(s):
#    stream_arn - 
#
#
#>
######################################################################
p6_aws_dynamodbstreams_stream_describe() {
    local stream_arn="$1"
    shift 1

    p6_run_read_cmd aws dynamodbstreams describe-stream --stream-arn $stream_arn "$@"
}