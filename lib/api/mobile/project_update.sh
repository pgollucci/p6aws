p6_aws_mobile_project_update() {
    local project_id="$1"
    shift 1

    p6_run_write_cmd aws mobile update-project --project-id $project_id "$@"
}
