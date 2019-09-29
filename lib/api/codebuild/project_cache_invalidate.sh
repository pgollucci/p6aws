######################################################################
#<
#
# Function:
#      = p6_aws_codebuild_project_cache_invalidate(project_name)
#
# Arg(s):
#    project_name - 
#
#
#>
######################################################################
p6_aws_codebuild_project_cache_invalidate() {
    local project_name="$1"
    shift 1

    p6_run_write_cmd aws codebuild invalidate-project-cache --project-name $project_name "$@"
}