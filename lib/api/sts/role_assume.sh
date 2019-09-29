######################################################################
#<
#
# Function:
#      = p6_aws_sts_role_assume(role_arn, role_session_name)
#
# Arg(s):
#    role_arn - 
#    role_session_name - 
#
#
#>
######################################################################
p6_aws_sts_role_assume() {
    local role_arn="$1"
    local role_session_name="$2"
    shift 2

    p6_run_write_cmd aws sts assume-role --role-arn $role_arn --role-session-name $role_session_name "$@"
}