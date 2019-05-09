p6_aws_robomaker_robot_application_create() {
    local name="$1"
    local sources="$2"
    local robot_software_suite="$3"
    shift 3

    p6_log_or_run aws robomaker create-robot-application --name $name --sources $sources --robot-software-suite $robot_software_suite "$@"
}
