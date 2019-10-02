######################################################################
#<
#
# Function:
#	p6_aws_resource_groups_group_create(name, resource_query)
#
#  Args:
#	name - 
#	resource_query - 
#
#>
######################################################################
p6_aws_resource_groups_group_create() {
    local name="$1"
    local resource_query="$2"
    shift 2

    p6_run_write_cmd aws resource-groups create-group --name $name --resource-query $resource_query "$@"
}