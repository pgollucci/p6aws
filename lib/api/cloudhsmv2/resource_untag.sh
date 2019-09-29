######################################################################
#<
#
# Function:
#      = p6_aws_cloudhsmv2_resource_untag(resource_id, tag_key_list)
#
# Arg(s):
#    resource_id - 
#    tag_key_list - 
#
#
#>
######################################################################
p6_aws_cloudhsmv2_resource_untag() {
    local resource_id="$1"
    local tag_key_list="$2"
    shift 2

    p6_run_write_cmd aws cloudhsmv2 untag-resource --resource-id $resource_id --tag-key-list $tag_key_list "$@"
}