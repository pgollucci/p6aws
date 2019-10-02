######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_tags_delete(tags)
#
#  Args:
#	tags - 
#
#>
######################################################################
p6_aws_autoscaling_tags_delete() {
    local tags="$1"
    shift 1

    p6_run_write_cmd aws autoscaling delete-tags --tags $tags "$@"
}