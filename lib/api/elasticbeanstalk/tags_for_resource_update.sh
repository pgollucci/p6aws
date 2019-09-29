######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_tags_for_resource_update(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_tags_for_resource_update() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws elasticbeanstalk update-tags-for-resource --resource-arn $resource_arn "$@"
}