######################################################################
#<
#
# Function:
#      = p6_aws_servicediscovery_instances_health_status_get(service_id)
#
# Arg(s):
#    service_id - 
#
#
#>
######################################################################
p6_aws_servicediscovery_instances_health_status_get() {
    local service_id="$1"
    shift 1

    p6_run_read_cmd aws servicediscovery get-instances-health-status --service-id $service_id "$@"
}