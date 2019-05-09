p6_aws_swf_domain_register() {
    local name="$1"
    local workflow_execution_retention_period_in_days="$2"
    shift 2

    p6_run_write_cmd aws swf register-domain --name $name --workflow-execution-retention-period-in-days $workflow_execution_retention_period_in_days "$@"
}
