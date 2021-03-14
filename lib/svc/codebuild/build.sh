######################################################################
#<
#
# Function: p6_aws_svc_codebuild_builds_list()
#
#>
######################################################################
p6_aws_svc_codebuild_builds_list() {

	p6_aws_cli_cmd codebuild \
		list-builds \
		--output text \
		--query "'ids[].[]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_codebuild_projects_list()
#
#>
######################################################################
p6_aws_svc_codebuild_projects_list() {

	p6_aws_cli_cmd codebuild \
		list-projects \
		--output text \
		--query "'projects[]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_codebuild_project_build_list([project_name=$AWS_CODEBUILD_PROJECT_NAME])
#
#  Args:
#	OPTIONAL project_name - [$AWS_CODEBUILD_PROJECT_NAME]
#
#>
######################################################################
p6_aws_svc_codebuild_project_build_list() {
	local project_name="${1:-$AWS_CODEBUILD_PROJECT_NAME}"

	p6_aws_cli_cmd codebuild \
		list-builds-for-project \
		--project-name \
		--output text \
		--query "'ids[]'"
}

######################################################################
#<
#
# Function: p6_aws_codebuild_build_get(build_id)
#
#  Args:
#	build_id -
#
#>
######################################################################
p6_aws_codebuild_build_get() {
	local build_id="$1"

	p6_aws_cli_cmd codebuild \
		batch-get-builds \
		--ids $build_id
}
