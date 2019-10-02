######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_skill_group_delete()
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_group_delete() {

    p6_run_write_cmd aws alexaforbusiness delete-skill-group "$@"
}