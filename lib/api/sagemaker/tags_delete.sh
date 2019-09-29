######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_tags_delete(resource_arn, tag_keys)
#
# Arg(s):
#    resource_arn - 
#    tag_keys - 
#
#
#>
######################################################################
p6_aws_sagemaker_tags_delete() {
    local resource_arn="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws sagemaker delete-tags --resource-arn $resource_arn --tag-keys $tag_keys "$@"
}