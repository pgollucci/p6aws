######################################################################
#<
#
# Function:
#      = p6_aws_mobile_project_describe(project_id)
#
# Arg(s):
#    project_id - 
#
#
#>
######################################################################
p6_aws_mobile_project_describe() {
    local project_id="$1"
    shift 1

    p6_run_read_cmd aws mobile describe-project --project-id $project_id "$@"
}