p6_aws_globalaccelerator_accelerator_delete() {
    local accelerator_arn="$1"
    shift 1

    p6_run_write_cmd aws globalaccelerator delete-accelerator --accelerator-arn $accelerator_arn "$@"
}
