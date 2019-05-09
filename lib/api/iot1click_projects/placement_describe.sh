p6_aws_iot1click_projects_placement_describe() {
    local placement_name="$1"
    local project_name="$2"
    shift 2

    p6_log_and_run aws iot1click-projects describe-placement --placement-name $placement_name --project-name $project_name "$@"
}
