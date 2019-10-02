######################################################################
#<
#
# Function:
#	p6_aws_robomaker_robot_delete(robot)
#
#  Args:
#	robot - 
#
#>
######################################################################
p6_aws_robomaker_robot_delete() {
    local robot="$1"
    shift 1

    p6_run_write_cmd aws robomaker delete-robot --robot $robot "$@"
}