######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_skills_list()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_skills_list() {

    p6_run_read_cmd aws alexaforbusiness list-skills "$@"
}