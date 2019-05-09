p6_aws_gamelift_alias_update() {
    local alias_id="$1"
    shift 1

    p6_log_or_run aws gamelift update-alias --alias-id $alias_id "$@"
}
