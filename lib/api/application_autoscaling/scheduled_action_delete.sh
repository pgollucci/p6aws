p6_aws_application_autoscaling_scheduled_action_delete() {
    local service_namespace="$1"
    local scheduled_action_name="$2"
    local resource_id="$3"
    local scalable_dimension="$4"
    shift 4

    p6_run_write_cmd aws application-autoscaling delete-scheduled-action --service-namespace $service_namespace --scheduled-action-name $scheduled_action_name --resource-id $resource_id --scalable-dimension $scalable_dimension "$@"
}
