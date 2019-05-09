p6_aws_rekognition_stream_processor_start() {
    local name="$1"
    shift 1

    p6_log_or_run aws rekognition start-stream-processor --name $name "$@"
}
