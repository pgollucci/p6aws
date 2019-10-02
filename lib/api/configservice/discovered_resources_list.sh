######################################################################
#<
#
# Function:
#	p6_aws_configservice_discovered_resources_list(resource_type)
#
#  Args:
#	resource_type - 
#
#>
######################################################################
p6_aws_configservice_discovered_resources_list() {
    local resource_type="$1"
    shift 1

    p6_run_read_cmd aws configservice list-discovered-resources --resource-type $resource_type "$@"
}