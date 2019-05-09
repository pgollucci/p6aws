p6_aws_devicefarm_instance_profile_delete() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm delete-instance-profile --arn $arn "$@"
}
