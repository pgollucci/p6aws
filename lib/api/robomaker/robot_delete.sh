p6_aws_robomaker_robot_delete() {
    local robot="$1"
    shift 1

    p6_log_or_run aws robomaker delete-robot --robot $robot "$@"
}
