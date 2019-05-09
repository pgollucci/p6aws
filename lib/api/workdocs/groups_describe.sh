p6_aws_workdocs_groups_describe() {
    local search_query="$1"
    shift 1

    p6_log_and_run aws workdocs describe-groups --search-query $search_query "$@"
}
