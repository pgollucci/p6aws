p6_aws_mobile_project_delete() {
    local project_id="$1"
    shift 1

    p6_log_or_run aws mobile delete-project --project-id $project_id "$@"
}
