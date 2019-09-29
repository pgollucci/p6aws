######################################################################
#<
#
# Function:
#      = p6_aws_inspector_resource_group_create(resource_group_tags)
#
# Arg(s):
#    resource_group_tags - 
#
#
#>
######################################################################
p6_aws_inspector_resource_group_create() {
    local resource_group_tags="$1"
    shift 1

    p6_run_write_cmd aws inspector create-resource-group --resource-group-tags $resource_group_tags "$@"
}