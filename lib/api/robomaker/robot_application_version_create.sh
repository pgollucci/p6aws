p6_aws_robomaker_robot_application_version_create() {
    local application="$1"
    shift 1

    p6_log_or_run aws robomaker create-robot-application-version --application $application "$@"
}
