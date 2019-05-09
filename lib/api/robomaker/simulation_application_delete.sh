p6_aws_robomaker_simulation_application_delete() {
    local application="$1"
    shift 1

    p6_log_or_run aws robomaker delete-simulation-application --application $application "$@"
}
