######################################################################
#<
#
# Function:
#	p6_aws_codestar_projects_list()
#
#>
######################################################################
p6_aws_codestar_projects_list() {

    p6_run_read_cmd aws codestar list-projects "$@"
}