######################################################################
#<
#
# Function:
#	p6_aws_workdocs_current_user_get(authentication_token)
#
#  Args:
#	authentication_token - 
#
#>
######################################################################
p6_aws_workdocs_current_user_get() {
    local authentication_token="$1"
    shift 1

    p6_run_read_cmd aws workdocs get-current-user --authentication-token $authentication_token "$@"
}