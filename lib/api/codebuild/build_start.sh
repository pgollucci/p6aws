######################################################################
#<
#
# Function:
#      = p6_aws_codebuild_build_start(project_name)
#
# Arg(s):
#    project_name - 
#
#
#>
######################################################################
p6_aws_codebuild_build_start() {
    local project_name="$1"
    shift 1

    p6_run_write_cmd aws codebuild start-build --project-name $project_name "$@"
}