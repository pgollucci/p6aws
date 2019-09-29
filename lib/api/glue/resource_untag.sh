######################################################################
#<
#
# Function:
#      = p6_aws_glue_resource_untag(resource_arn, tags_to_remove)
#
# Arg(s):
#    resource_arn - 
#    tags_to_remove - 
#
#
#>
######################################################################
p6_aws_glue_resource_untag() {
    local resource_arn="$1"
    local tags_to_remove="$2"
    shift 2

    p6_run_write_cmd aws glue untag-resource --resource-arn $resource_arn --tags-to-remove $tags_to_remove "$@"
}