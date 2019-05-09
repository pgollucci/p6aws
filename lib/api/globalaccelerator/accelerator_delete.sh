p6_aws_globalaccelerator_accelerator_delete() {
    local accelerator_arn="$1"
    shift 1

    p6_log_or_run aws globalaccelerator delete-accelerator --accelerator-arn $accelerator_arn "$@"
}
