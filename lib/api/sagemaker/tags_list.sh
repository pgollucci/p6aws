######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_tags_list(resource_arn)
#
#  Args:
#	resource_arn - 
#
#>
######################################################################
p6_aws_sagemaker_tags_list() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws sagemaker list-tags --resource-arn $resource_arn "$@"
}