p6_aws_kinesis_stream_consumer_deregister() {

    p6_log_or_run aws kinesis deregister-stream-consumer "$@"
}
