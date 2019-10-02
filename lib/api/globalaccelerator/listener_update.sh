######################################################################
#<
#
# Function:
#	p6_aws_globalaccelerator_listener_update(listener_arn)
#
#  Args:
#	listener_arn - 
#
#>
######################################################################
p6_aws_globalaccelerator_listener_update() {
    local listener_arn="$1"
    shift 1

    p6_run_read_cmd aws globalaccelerator update-listener --listener-arn $listener_arn "$@"
}