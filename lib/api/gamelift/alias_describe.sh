p6_aws_gamelift_alias_describe() {
    local alias_id="$1"
    shift 1

    p6_run_read_cmd aws gamelift describe-alias --alias-id $alias_id "$@"
}
