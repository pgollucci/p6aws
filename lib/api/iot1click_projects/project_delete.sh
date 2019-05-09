p6_aws_iot1click_projects_project_delete() {
    local project_name="$1"
    shift 1

    p6_log_or_run aws iot1click-projects delete-project --project-name $project_name "$@"
}
