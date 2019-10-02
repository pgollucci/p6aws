######################################################################
#<
#
# Function:
#	p6_aws_elbv2_listener_modify(listener_arn)
#
#  Args:
#	listener_arn - 
#
#>
######################################################################
p6_aws_elbv2_listener_modify() {
    local listener_arn="$1"
    shift 1

    p6_run_read_cmd aws elbv2 modify-listener --listener-arn $listener_arn "$@"
}