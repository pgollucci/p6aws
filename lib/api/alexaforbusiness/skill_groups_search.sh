######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_skill_groups_search()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_groups_search() {

    p6_run_write_cmd aws alexaforbusiness search-skill-groups "$@"
}