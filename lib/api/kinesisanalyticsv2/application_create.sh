p6_aws_kinesisanalyticsv2_application_create() {
    local application_name="$1"
    local runtime_environment="$2"
    local service_execution_role="$3"
    shift 3

    p6_run_write_cmd aws kinesisanalyticsv2 create-application --application-name $application_name --runtime-environment $runtime_environment --service-execution-role $service_execution_role "$@"
}
