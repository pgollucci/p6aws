######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_tags_list(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_alexaforbusiness_tags_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness list-tags --arn $arn "$@"
}