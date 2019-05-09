p6_aws_ssm_automation_execution_start() {
    local document_name="$1"
    shift 1

    p6_log_or_run aws ssm start-automation-execution --document-name $document_name "$@"
}
