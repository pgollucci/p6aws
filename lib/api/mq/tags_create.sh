######################################################################
#<
#
# Function:
#	p6_aws_mq_tags_create(resource_arn)
#
#  Args:
#	resource_arn - 
#
#>
######################################################################
p6_aws_mq_tags_create() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws mq create-tags --resource-arn $resource_arn "$@"
}