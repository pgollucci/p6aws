p6_aws_rekognition_stream_processor_describe() {
    local name="$1"
    shift 1

    p6_log_and_run aws rekognition describe-stream-processor --name $name "$@"
}
