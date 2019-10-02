######################################################################
#<
#
# Function:
#	p6_aws_directconnect_tags_describe(resource_arns)
#
#  Args:
#	resource_arns - 
#
#>
######################################################################
p6_aws_directconnect_tags_describe() {
    local resource_arns="$1"
    shift 1

    p6_run_read_cmd aws directconnect describe-tags --resource-arns $resource_arns "$@"
}