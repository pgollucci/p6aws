p6_aws_robomaker_simulation_application_version_create() {
    local application="$1"
    shift 1

    p6_log_or_run aws robomaker create-simulation-application-version --application $application "$@"
}
