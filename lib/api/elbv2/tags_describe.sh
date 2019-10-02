######################################################################
#<
#
# Function:
#	p6_aws_elbv2_tags_describe(resource_arns)
#
#  Args:
#	resource_arns - 
#
#>
######################################################################
p6_aws_elbv2_tags_describe() {
    local resource_arns="$1"
    shift 1

    p6_run_read_cmd aws elbv2 describe-tags --resource-arns $resource_arns "$@"
}