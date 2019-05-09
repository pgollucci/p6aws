p6_aws_robomaker_robot_deregister() {
    local fleet="$1"
    local robot="$2"
    shift 2

    p6_log_or_run aws robomaker deregister-robot --fleet $fleet --robot $robot "$@"
}
