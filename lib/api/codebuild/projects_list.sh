p6_aws_codebuild_projects_list() {

    p6_run_read_cmd aws codebuild list-projects "$@"
}
