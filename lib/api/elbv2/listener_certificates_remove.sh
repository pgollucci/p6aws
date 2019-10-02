######################################################################
#<
#
# Function:
#	p6_aws_elbv2_listener_certificates_remove(listener_arn, certificates)
#
#  Args:
#	listener_arn - 
#	certificates - 
#
#>
######################################################################
p6_aws_elbv2_listener_certificates_remove() {
    local listener_arn="$1"
    local certificates="$2"
    shift 2

    p6_run_read_cmd aws elbv2 remove-listener-certificates --listener-arn $listener_arn --certificates $certificates "$@"
}