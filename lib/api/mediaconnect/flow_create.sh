p6_aws_mediaconnect_flow_create() {
    local name="$1"
    local source="$2"
    shift 2

    p6_log_or_run aws mediaconnect create-flow --name $name --source $source "$@"
}
