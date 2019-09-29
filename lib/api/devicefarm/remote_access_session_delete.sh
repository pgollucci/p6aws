######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_remote_access_session_delete(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_remote_access_session_delete() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm delete-remote-access-session --arn $arn "$@"
}