p6_aws_robomaker_robot_describe() {
    local robot="$1"
    shift 1

    p6_run_read_cmd aws robomaker describe-robot --robot $robot "$@"
}
