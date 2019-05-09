p6_aws_alexaforbusiness_skill_from_skill_group_disassociate() {
    local skill_id="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness disassociate-skill-from-skill-group --skill-id $skill_id "$@"
}
