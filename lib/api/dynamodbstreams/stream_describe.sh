p6_aws_dynamodbstreams_stream_describe() {
    local stream_arn="$1"
    shift 1

    p6_log_and_run aws dynamodbstreams describe-stream --stream-arn $stream_arn "$@"
}
