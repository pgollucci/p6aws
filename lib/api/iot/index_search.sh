p6_aws_iot_index_search() {
    local query_string="$1"
    shift 1

    p6_log_or_run aws iot search-index --query-string $query_string "$@"
}
