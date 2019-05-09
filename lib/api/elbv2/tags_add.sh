p6_aws_elbv2_tags_add() {
    local resource_arns="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws elbv2 add-tags --resource-arns $resource_arns --tags $tags "$@"
}
