p6_aws_alexaforbusiness_skill_authorization_delete() {
    local skill_id="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness delete-skill-authorization --skill-id $skill_id "$@"
}
