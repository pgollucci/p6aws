p6_aws_codebuild_project_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws codebuild delete-project --name $name "$@"
}
