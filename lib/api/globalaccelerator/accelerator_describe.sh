p6_aws_globalaccelerator_accelerator_describe() {
    local accelerator_arn="$1"
    shift 1

    p6_log_and_run aws globalaccelerator describe-accelerator --accelerator-arn $accelerator_arn "$@"
}
