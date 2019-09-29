######################################################################
#<
#
# Function:
#      = p6_aws_workspaces_tags_create(resource_id, tags)
#
# Arg(s):
#    resource_id - 
#    tags - 
#
#
#>
######################################################################
p6_aws_workspaces_tags_create() {
    local resource_id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws workspaces create-tags --resource-id $resource_id --tags $tags "$@"
}