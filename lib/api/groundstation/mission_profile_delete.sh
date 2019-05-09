p6_aws_groundstation_mission_profile_delete() {
    local mission_profile_id="$1"
    shift 1

    p6_run_write_cmd aws groundstation delete-mission-profile --mission-profile-id $mission_profile_id "$@"
}
