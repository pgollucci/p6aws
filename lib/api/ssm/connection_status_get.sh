######################################################################
#<
#
# Function:
#	p6_aws_ssm_connection_status_get(target)
#
#  Args:
#	target - 
#
#>
######################################################################
p6_aws_ssm_connection_status_get() {
    local target="$1"
    shift 1

    p6_run_read_cmd aws ssm get-connection-status --target $target "$@"
}