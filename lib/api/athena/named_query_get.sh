p6_aws_athena_named_query_get() {
    local named_query_id="$1"
    shift 1

    p6_run_read_cmd aws athena get-named-query --named-query-id $named_query_id "$@"
}
