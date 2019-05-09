p6_aws_robomaker_robot_application_describe() {
    local application="$1"
    shift 1

    p6_log_and_run aws robomaker describe-robot-application --application $application "$@"
}
