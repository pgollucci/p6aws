p6_aws_fms_policy_put() {
    local policy="$1"
    shift 1

    p6_log_or_run aws fms put-policy --policy $policy "$@"
}
