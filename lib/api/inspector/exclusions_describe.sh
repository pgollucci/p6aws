p6_aws_inspector_exclusions_describe() {
    local exclusion_arns="$1"
    shift 1

    p6_log_and_run aws inspector describe-exclusions --exclusion-arns $exclusion_arns "$@"
}
