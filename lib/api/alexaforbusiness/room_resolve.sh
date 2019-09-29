######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_room_resolve(user_id, skill_id)
#
# Arg(s):
#    user_id - 
#    skill_id - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_room_resolve() {
    local user_id="$1"
    local skill_id="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness resolve-room --user-id $user_id --skill-id $skill_id "$@"
}