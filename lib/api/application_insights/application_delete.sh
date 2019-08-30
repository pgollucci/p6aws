p6_aws_application_insights_application_delete() {
    local resource_group_name="$1"
    shift 1

    p6_run_write_cmd aws application-insights delete-application --resource-group-name $resource_group_name "$@"
}
