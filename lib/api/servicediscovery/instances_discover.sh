######################################################################
#<
#
# Function:
#      = p6_aws_servicediscovery_instances_discover(namespace_name, service_name)
#
# Arg(s):
#    namespace_name - 
#    service_name - 
#
#
#>
######################################################################
p6_aws_servicediscovery_instances_discover() {
    local namespace_name="$1"
    local service_name="$2"
    shift 2

    p6_run_write_cmd aws servicediscovery discover-instances --namespace-name $namespace_name --service-name $service_name "$@"
}