######################################################################
#<
#
# Function:
#      = p6_aws_iam_user_delete(user_name)
#
# Arg(s):
#    user_name - 
#
#
#>
######################################################################
p6_aws_iam_user_delete() {
    local user_name="$1"
    shift 1

    p6_run_write_cmd aws iam delete-user --user-name $user_name "$@"
}