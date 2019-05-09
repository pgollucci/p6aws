p6_aws_iot_stream_create() {
    local stream_id="$1"
    local files="$2"
    local role_arn="$3"
    shift 3

    p6_log_or_run aws iot create-stream --stream-id $stream_id --files $files --role-arn $role_arn "$@"
}
