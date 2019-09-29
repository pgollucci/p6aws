######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_room_skill_parameter_get(skill_id, parameter_key)
#
# Arg(s):
#    skill_id - 
#    parameter_key - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_room_skill_parameter_get() {
    local skill_id="$1"
    local parameter_key="$2"
    shift 2

    p6_run_read_cmd aws alexaforbusiness get-room-skill-parameter --skill-id $skill_id --parameter-key $parameter_key "$@"
}