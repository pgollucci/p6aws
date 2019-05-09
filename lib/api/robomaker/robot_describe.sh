p6_aws_robomaker_robot_describe() {
    local robot="$1"
    shift 1

    p6_log_and_run aws robomaker describe-robot --robot $robot "$@"
}
