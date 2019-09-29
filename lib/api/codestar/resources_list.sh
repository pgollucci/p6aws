######################################################################
#<
#
# Function:
#      = p6_aws_codestar_resources_list(project_id)
#
# Arg(s):
#    project_id - 
#
#
#>
######################################################################
p6_aws_codestar_resources_list() {
    local project_id="$1"
    shift 1

    p6_run_read_cmd aws codestar list-resources --project-id $project_id "$@"
}