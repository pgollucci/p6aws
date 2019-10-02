######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_skill_with_skill_group_associate(skill_id)
#
#  Args:
#	skill_id - 
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_with_skill_group_associate() {
    local skill_id="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness associate-skill-with-skill-group --skill-id $skill_id "$@"
}