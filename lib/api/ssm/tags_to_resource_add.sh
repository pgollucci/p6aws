######################################################################
#<
#
# Function:
#      = p6_aws_ssm_tags_to_resource_add(resource_type, resource_id, tags)
#
# Arg(s):
#    resource_type - 
#    resource_id - 
#    tags - 
#
#
#>
######################################################################
p6_aws_ssm_tags_to_resource_add() {
    local resource_type="$1"
    local resource_id="$2"
    local tags="$3"
    shift 3

    p6_run_write_cmd aws ssm add-tags-to-resource --resource-type $resource_type --resource-id $resource_id --tags $tags "$@"
}