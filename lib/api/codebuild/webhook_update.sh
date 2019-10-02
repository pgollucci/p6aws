######################################################################
#<
#
# Function:
#	p6_aws_codebuild_webhook_update(project_name)
#
#  Args:
#	project_name - 
#
#>
######################################################################
p6_aws_codebuild_webhook_update() {
    local project_name="$1"
    shift 1

    p6_run_write_cmd aws codebuild update-webhook --project-name $project_name "$@"
}