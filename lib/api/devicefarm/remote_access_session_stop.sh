######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_remote_access_session_stop(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_devicefarm_remote_access_session_stop() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm stop-remote-access-session --arn $arn "$@"
}