p6_aws_ram_resource_share_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws ram create-resource-share --name $name "$@"
}
