######################################################################
#<
#
# Function:
#      = p6_aws_iot1click_projects_placement_describe(placement_name, project_name)
#
# Arg(s):
#    placement_name - 
#    project_name - 
#
#
#>
######################################################################
p6_aws_iot1click_projects_placement_describe() {
    local placement_name="$1"
    local project_name="$2"
    shift 2

    p6_run_read_cmd aws iot1click-projects describe-placement --placement-name $placement_name --project-name $project_name "$@"
}