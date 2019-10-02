######################################################################
#<
#
# Function:
#	p6_aws_elbv2_listener_certificates_describe(listener_arn)
#
#  Args:
#	listener_arn - 
#
#>
######################################################################
p6_aws_elbv2_listener_certificates_describe() {
    local listener_arn="$1"
    shift 1

    p6_run_read_cmd aws elbv2 describe-listener-certificates --listener-arn $listener_arn "$@"
}