p6_aws_robomaker_simulation_application_delete() {
    local application="$1"
    shift 1

    p6_run_write_cmd aws robomaker delete-simulation-application --application $application "$@"
}
