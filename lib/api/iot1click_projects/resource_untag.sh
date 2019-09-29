######################################################################
#<
#
# Function:
#      = p6_aws_iot1click_projects_resource_untag(resource_arn, tag_keys)
#
# Arg(s):
#    resource_arn - 
#    tag_keys - 
#
#
#>
######################################################################
p6_aws_iot1click_projects_resource_untag() {
    local resource_arn="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws iot1click-projects untag-resource --resource-arn $resource_arn --tag-keys $tag_keys "$@"
}