######################################################################
#<
#
# Function:
#      = p6_aws_codebuild_webhook_create(project_name)
#
# Arg(s):
#    project_name - 
#
#
#>
######################################################################
p6_aws_codebuild_webhook_create() {
    local project_name="$1"
    shift 1

    p6_run_write_cmd aws codebuild create-webhook --project-name $project_name "$@"
}