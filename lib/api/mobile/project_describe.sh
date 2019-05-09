p6_aws_mobile_project_describe() {
    local project_id="$1"
    shift 1

    p6_log_and_run aws mobile describe-project --project-id $project_id "$@"
}
