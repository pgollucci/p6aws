######################################################################
#<
#
# Function:
#	p6_aws_elbv2_listener_delete(listener_arn)
#
#  Args:
#	listener_arn - 
#
#>
######################################################################
p6_aws_elbv2_listener_delete() {
    local listener_arn="$1"
    shift 1

    p6_run_read_cmd aws elbv2 delete-listener --listener-arn $listener_arn "$@"
}