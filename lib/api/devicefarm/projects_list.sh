######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_projects_list()
#
#>
######################################################################
p6_aws_devicefarm_projects_list() {

    p6_run_read_cmd aws devicefarm list-projects "$@"
}