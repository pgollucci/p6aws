######################################################################
#<
#
# Function:
#      = p6_aws_ram_resource_untag(resource_share_arn, tag_keys)
#
# Arg(s):
#    resource_share_arn - 
#    tag_keys - 
#
#
#>
######################################################################
p6_aws_ram_resource_untag() {
    local resource_share_arn="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws ram untag-resource --resource-share-arn $resource_share_arn --tag-keys $tag_keys "$@"
}