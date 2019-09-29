######################################################################
#<
#
# Function:
#      = p6_aws_ds_tags_for_resource_list(resource_id)
#
# Arg(s):
#    resource_id - 
#
#
#>
######################################################################
p6_aws_ds_tags_for_resource_list() {
    local resource_id="$1"
    shift 1

    p6_run_read_cmd aws ds list-tags-for-resource --resource-id $resource_id "$@"
}