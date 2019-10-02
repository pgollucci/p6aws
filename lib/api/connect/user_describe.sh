######################################################################
#<
#
# Function:
#	p6_aws_connect_user_describe(user_id, instance_id)
#
#  Args:
#	user_id - 
#	instance_id - 
#
#>
######################################################################
p6_aws_connect_user_describe() {
    local user_id="$1"
    local instance_id="$2"
    shift 2

    p6_run_read_cmd aws connect describe-user --user-id $user_id --instance-id $instance_id "$@"
}