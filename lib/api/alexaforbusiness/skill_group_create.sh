######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_skill_group_create(skill_group_name)
#
#  Args:
#	skill_group_name - 
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_group_create() {
    local skill_group_name="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness create-skill-group --skill-group-name $skill_group_name "$@"
}