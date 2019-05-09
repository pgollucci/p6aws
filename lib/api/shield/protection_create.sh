p6_aws_shield_protection_create() {
    local name="$1"
    local resource_arn="$2"
    shift 2

    p6_log_or_run aws shield create-protection --name $name --resource-arn $resource_arn "$@"
}
