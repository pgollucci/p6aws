p6_aws_ds_event_topic_register() {
    local directory_id="$1"
    local topic_name="$2"
    shift 2

    p6_run_write_cmd aws ds register-event-topic --directory-id $directory_id --topic-name $topic_name "$@"
}
