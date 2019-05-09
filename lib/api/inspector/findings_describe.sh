p6_aws_inspector_findings_describe() {
    local finding_arns="$1"
    shift 1

    p6_log_and_run aws inspector describe-findings --finding-arns $finding_arns "$@"
}
