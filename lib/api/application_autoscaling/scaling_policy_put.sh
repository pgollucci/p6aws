######################################################################
#<
#
# Function:
#      = p6_aws_application_autoscaling_scaling_policy_put(policy_name, service_namespace, resource_id, scalable_dimension)
#
# Arg(s):
#    policy_name - 
#    service_namespace - 
#    resource_id - 
#    scalable_dimension - 
#
#
#>
######################################################################
p6_aws_application_autoscaling_scaling_policy_put() {
    local policy_name="$1"
    local service_namespace="$2"
    local resource_id="$3"
    local scalable_dimension="$4"
    shift 4

    p6_run_write_cmd aws application-autoscaling put-scaling-policy --policy-name $policy_name --service-namespace $service_namespace --resource-id $resource_id --scalable-dimension $scalable_dimension "$@"
}