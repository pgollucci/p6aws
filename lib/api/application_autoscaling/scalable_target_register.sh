######################################################################
#<
#
# Function:
#	p6_aws_application_autoscaling_scalable_target_register(service_namespace, resource_id, scalable_dimension)
#
#  Args:
#	service_namespace - 
#	resource_id - 
#	scalable_dimension - 
#
#>
######################################################################
p6_aws_application_autoscaling_scalable_target_register() {
    local service_namespace="$1"
    local resource_id="$2"
    local scalable_dimension="$3"
    shift 3

    p6_run_read_cmd aws application-autoscaling register-scalable-target --service-namespace $service_namespace --resource-id $resource_id --scalable-dimension $scalable_dimension "$@"
}