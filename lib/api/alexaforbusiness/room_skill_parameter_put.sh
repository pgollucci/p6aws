p6_aws_alexaforbusiness_room_skill_parameter_put() {
    local skill_id="$1"
    local room_skill_parameter="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness put-room-skill-parameter --skill-id $skill_id --room-skill-parameter $room_skill_parameter "$@"
}
