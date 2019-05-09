p6_aws_kinesis_stream_consumer_register() {
    local stream_arn="$1"
    local consumer_name="$2"
    shift 2

    p6_log_or_run aws kinesis register-stream-consumer --stream-arn $stream_arn --consumer-name $consumer_name "$@"
}
