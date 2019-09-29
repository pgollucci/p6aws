######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_remote_access_session_get(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_remote_access_session_get() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm get-remote-access-session --arn $arn "$@"
}