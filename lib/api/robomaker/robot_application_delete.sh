p6_aws_robomaker_robot_application_delete() {
    local application="$1"
    shift 1

    p6_log_or_run aws robomaker delete-robot-application --application $application "$@"
}
