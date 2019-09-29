######################################################################
#<
#
# Function:
#      = p6_aws_mobile_projects_list()
#
#
#
#>
######################################################################
p6_aws_mobile_projects_list() {

    p6_run_read_cmd aws mobile list-projects "$@"
}