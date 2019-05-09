p6_aws_codebuild_builds_for_project_list() {
    local project_name="$1"
    shift 1

    p6_run_read_cmd aws codebuild list-builds-for-project --project-name $project_name "$@"
}
