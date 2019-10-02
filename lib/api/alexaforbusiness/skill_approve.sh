######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_skill_approve(skill_id)
#
#  Args:
#	skill_id - 
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_approve() {
    local skill_id="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness approve-skill --skill-id $skill_id "$@"
}