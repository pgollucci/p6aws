p6_aws_autoscaling_launch_configuration_delete() {
    local launch_configuration_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling delete-launch-configuration --launch-configuration-name $launch_configuration_name "$@"
}
