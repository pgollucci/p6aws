p6_aws_gamelift_alias_delete() {
    local alias_id="$1"
    shift 1

    p6_log_or_run aws gamelift delete-alias --alias-id $alias_id "$@"
}
