######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_or_update_tags_create(tags)
#
#  Args:
#	tags - 
#
#>
######################################################################
p6_aws_autoscaling_or_update_tags_create() {
    local tags="$1"
    shift 1

    p6_run_write_cmd aws autoscaling create-or-update-tags --tags $tags "$@"
}