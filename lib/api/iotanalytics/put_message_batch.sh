p6_aws_iotanalytics_put_message_batch() {
    local channel_name="$1"
    local messages="$2"
    shift 2

    p6_log_or_run aws iotanalytics batch-put-message --channel-name $channel_name --messages $messages "$@"
}
