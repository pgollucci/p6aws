p6_aws_gamelift_alias_describe() {
    local alias_id="$1"
    shift 1

    p6_log_and_run aws gamelift describe-alias --alias-id $alias_id "$@"
}
