######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_user_create(user_id)
#
# Arg(s):
#    user_id - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_user_create() {
    local user_id="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness create-user --user-id $user_id "$@"
}