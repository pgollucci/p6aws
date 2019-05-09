p6_aws_robomaker_robot_application_update() {
    local application="$1"
    local sources="$2"
    local robot_software_suite="$3"
    shift 3

    p6_log_or_run aws robomaker update-robot-application --application $application --sources $sources --robot-software-suite $robot_software_suite "$@"
}
