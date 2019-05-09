p6_aws_glue_resource_policy_put() {
    local policy_in_json="$1"
    shift 1

    p6_log_or_run aws glue put-resource-policy --policy-in-json $policy_in_json "$@"
}
