p6_aws_globalaccelerator_listeners_list() {
    local accelerator_arn="$1"
    shift 1

    p6_log_and_run aws globalaccelerator list-listeners --accelerator-arn $accelerator_arn "$@"
}
