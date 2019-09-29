######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_tags_from_resource_remove(resource_name, tag_keys)
#
# Arg(s):
#    resource_name - 
#    tag_keys - 
#
#
#>
######################################################################
p6_aws_elasticache_tags_from_resource_remove() {
    local resource_name="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws elasticache remove-tags-from-resource --resource-name $resource_name --tag-keys $tag_keys "$@"
}