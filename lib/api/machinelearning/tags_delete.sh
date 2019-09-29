######################################################################
#<
#
# Function:
#      = p6_aws_machinelearning_tags_delete(tag_keys, resource_id, resource_type)
#
# Arg(s):
#    tag_keys - 
#    resource_id - 
#    resource_type - 
#
#
#>
######################################################################
p6_aws_machinelearning_tags_delete() {
    local tag_keys="$1"
    local resource_id="$2"
    local resource_type="$3"
    shift 3

    p6_run_write_cmd aws machinelearning delete-tags --tag-keys $tag_keys --resource-id $resource_id --resource-type $resource_type "$@"
}