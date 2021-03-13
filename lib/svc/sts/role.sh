######################################################################
#<
#
# Function: p6_aws_svc_sts_role_assume(role_arn, role_session_name)
#
#  Args:
#	role_arn -
#	role_session_name -
#
#>
######################################################################
p6_aws_svc_sts_role_assume() {
    set -x
    local role_arn="$1"
    local role_session_name="$2"

    set +x
    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_sts_role_unassume()
#
#>
######################################################################
p6_aws_svc_sts_role_unassume() {

    p6_return_void
}