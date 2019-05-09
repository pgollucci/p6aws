p6_aws_groundstation_mission_profile_create() {
    local dataflow_edges="$1"
    local minimum_viable_contact_duration_seconds="$2"
    local name="$3"
    local tracking_config_arn="$4"
    shift 4

    p6_run_write_cmd aws groundstation create-mission-profile --dataflow-edges $dataflow_edges --minimum-viable-contact-duration-seconds $minimum_viable_contact_duration_seconds --name $name --tracking-config-arn $tracking_config_arn "$@"
}
