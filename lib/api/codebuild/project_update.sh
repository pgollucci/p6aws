p6_aws_codebuild_project_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws codebuild update-project --name $name "$@"
}
