######################################################################
#<
#
# Function:
#      = p6_aws_mobile_project_delete(project_id)
#
# Arg(s):
#    project_id - 
#
#
#>
######################################################################
p6_aws_mobile_project_delete() {
    local project_id="$1"
    shift 1

    p6_run_write_cmd aws mobile delete-project --project-id $project_id "$@"
}