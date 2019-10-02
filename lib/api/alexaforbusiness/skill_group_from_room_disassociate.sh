######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_skill_group_from_room_disassociate()
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_group_from_room_disassociate() {

    p6_run_write_cmd aws alexaforbusiness disassociate-skill-group-from-room "$@"
}