######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_skill_group_get()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_group_get() {

    p6_run_read_cmd aws alexaforbusiness get-skill-group "$@"
}