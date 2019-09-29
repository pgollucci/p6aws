######################################################################
#<
#
# Function:
#      = p6_aws_iot1click_projects_projects_list()
#
#
#
#>
######################################################################
p6_aws_iot1click_projects_projects_list() {

    p6_run_read_cmd aws iot1click-projects list-projects "$@"
}