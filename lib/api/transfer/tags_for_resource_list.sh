######################################################################
#<
#
# Function:
#	p6_aws_transfer_tags_for_resource_list(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_transfer_tags_for_resource_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws transfer list-tags-for-resource --arn $arn "$@"
}