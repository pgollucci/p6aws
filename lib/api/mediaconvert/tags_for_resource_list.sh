######################################################################
#<
#
# Function:
#	p6_aws_mediaconvert_tags_for_resource_list(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_mediaconvert_tags_for_resource_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws mediaconvert list-tags-for-resource --arn $arn "$@"
}