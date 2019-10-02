######################################################################
#<
#
# Function:
#	p6_aws_iot1click_projects_placements_list(project_name)
#
#  Args:
#	project_name - 
#
#>
######################################################################
p6_aws_iot1click_projects_placements_list() {
    local project_name="$1"
    shift 1

    p6_run_read_cmd aws iot1click-projects list-placements --project-name $project_name "$@"
}