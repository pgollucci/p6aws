p6_aws_alexaforbusiness_skill_with_users_associate() {
    local skill_id="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness associate-skill-with-users --skill-id $skill_id "$@"
}
