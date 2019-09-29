######################################################################
#<
#
# Function:
#      = p6_aws_codestar_user_profile_update(user_arn)
#
# Arg(s):
#    user_arn - 
#
#
#>
######################################################################
p6_aws_codestar_user_profile_update() {
    local user_arn="$1"
    shift 1

    p6_run_write_cmd aws codestar update-user-profile --user-arn $user_arn "$@"
}