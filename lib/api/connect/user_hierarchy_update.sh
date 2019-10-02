######################################################################
#<
#
# Function:
#	p6_aws_connect_user_hierarchy_update(user_id, instance_id)
#
#  Args:
#	user_id - 
#	instance_id - 
#
#>
######################################################################
p6_aws_connect_user_hierarchy_update() {
    local user_id="$1"
    local instance_id="$2"
    shift 2

    p6_run_write_cmd aws connect update-user-hierarchy --user-id $user_id --instance-id $instance_id "$@"
}