p6_aws_iot_index_describe() {
    local index_name="$1"
    shift 1

    p6_log_and_run aws iot describe-index --index-name $index_name "$@"
}
