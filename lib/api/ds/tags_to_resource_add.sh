######################################################################
#<
#
# Function:
#      = p6_aws_ds_tags_to_resource_add(resource_id, tags)
#
# Arg(s):
#    resource_id - 
#    tags - 
#
#
#>
######################################################################
p6_aws_ds_tags_to_resource_add() {
    local resource_id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws ds add-tags-to-resource --resource-id $resource_id --tags $tags "$@"
}