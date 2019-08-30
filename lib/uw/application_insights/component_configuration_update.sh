aws_application_insights_monitor() {
        local resource_group_name="$1"
        local component_name="$2"
        shift 2

    cond_log_and_run aws application-insights update-component-configuration --resource-group-name $resource_group_name --component-name $component_name --monitor "$@"
}

