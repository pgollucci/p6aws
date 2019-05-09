p6_aws_athena_query_execution_stop() {

    p6_run_write_cmd aws athena stop-query-execution "$@"
}
