######################################################################
#<
#
# Function:
#	p6_aws_connect_user_delete(instance_id, user_id)
#
#  Args:
#	instance_id - 
#	user_id - 
#
#>
######################################################################
p6_aws_connect_user_delete() {
    local instance_id="$1"
    local user_id="$2"
    shift 2

    p6_run_write_cmd aws connect delete-user --instance-id $instance_id --user-id $user_id "$@"
}