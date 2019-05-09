p6_aws_codestar_team_member_update() {
    local project_id="$1"
    local user_arn="$2"
    shift 2

    p6_run_write_cmd aws codestar update-team-member --project-id $project_id --user-arn $user_arn "$@"
}
