######################################################################
#<
#
# Function:
#      = p6_aws_codebuild_secret(project_name)
#
# Arg(s):
#    project_name - 
#
#
#>
######################################################################
p6_aws_codebuild_secret() {
        local project_name="$1"
        shift 1

    cond_log_and_run aws codebuild update-webhook --project-name $project_name --rotate-secret "$@"
}
