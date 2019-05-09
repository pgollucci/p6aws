p6_aws_gamelift_alias_create() {
    local name="$1"
    local routing_strategy="$2"
    shift 2

    p6_log_or_run aws gamelift create-alias --name $name --routing-strategy $routing_strategy "$@"
}
