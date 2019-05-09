p6_aws_athena_named_query_delete() {

    p6_run_write_cmd aws athena delete-named-query "$@"
}
