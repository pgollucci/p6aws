p6_aws_autoscaling_plans_scaling_plan_resource_forecast_data_get() {
    local scaling_plan_name="$1"
    local scaling_plan_version="$2"
    local service_namespace="$3"
    local resource_id="$4"
    local scalable_dimension="$5"
    local forecast_data_type="$6"
    local start_time="$7"
    local end_time="$8"
    shift 8

    p6_run_read_cmd aws autoscaling-plans get-scaling-plan-resource-forecast-data --scaling-plan-name $scaling_plan_name --scaling-plan-version $scaling_plan_version --service-namespace $service_namespace --resource-id $resource_id --scalable-dimension $scalable_dimension --forecast-data-type $forecast_data_type --start-time $start_time --end-time $end_time "$@"
}
