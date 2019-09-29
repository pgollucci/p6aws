######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_user_deactivate(user_id)
#
# Arg(s):
#    user_id - 
#
#
#>
######################################################################
p6_aws_workdocs_user_deactivate() {
    local user_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs deactivate-user --user-id $user_id "$@"
}