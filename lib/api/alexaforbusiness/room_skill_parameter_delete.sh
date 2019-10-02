######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_room_skill_parameter_delete(skill_id, parameter_key)
#
#  Args:
#	skill_id - 
#	parameter_key - 
#
#>
######################################################################
p6_aws_alexaforbusiness_room_skill_parameter_delete() {
    local skill_id="$1"
    local parameter_key="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness delete-room-skill-parameter --skill-id $skill_id --parameter-key $parameter_key "$@"
}