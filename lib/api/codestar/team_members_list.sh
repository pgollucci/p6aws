p6_aws_codestar_team_members_list() {
    local project_id="$1"
    shift 1

    p6_run_read_cmd aws codestar list-team-members --project-id $project_id "$@"
}
