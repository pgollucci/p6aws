p6_aws_robomaker_robot_register() {
    local fleet="$1"
    local robot="$2"
    shift 2

    p6_run_write_cmd aws robomaker register-robot --fleet $fleet --robot $robot "$@"
}
