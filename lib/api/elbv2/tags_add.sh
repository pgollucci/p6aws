######################################################################
#<
#
# Function:
#	p6_aws_elbv2_tags_add(resource_arns, tags)
#
#  Args:
#	resource_arns - 
#	tags - 
#
#>
######################################################################
p6_aws_elbv2_tags_add() {
    local resource_arns="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws elbv2 add-tags --resource-arns $resource_arns --tags $tags "$@"
}