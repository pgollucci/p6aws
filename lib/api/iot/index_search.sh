p6_aws_iot_index_search() {
    local query_string="$1"
    shift 1

    p6_run_write_cmd aws iot search-index --query-string $query_string "$@"
}
