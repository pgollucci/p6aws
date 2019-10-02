######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_skill_from_users_disassociate(skill_id)
#
#  Args:
#	skill_id - 
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_from_users_disassociate() {
    local skill_id="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness disassociate-skill-from-users --skill-id $skill_id "$@"
}