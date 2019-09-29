######################################################################
#<
#
# Function:
#      = p6_aws_appstream_tags_for_resource_list(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_appstream_tags_for_resource_list() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws appstream list-tags-for-resource --resource-arn $resource_arn "$@"
}