p6_aws_mobile_project_export() {
    local project_id="$1"
    shift 1

    p6_log_or_run aws mobile export-project --project-id $project_id "$@"
}
