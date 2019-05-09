p6_aws_machinelearning_tags_describe() {
    local resource_id="$1"
    local resource_type="$2"
    shift 2

    p6_log_and_run aws machinelearning describe-tags --resource-id $resource_id --resource-type $resource_type "$@"
}
