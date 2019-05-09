p6_aws_ses_configuration_set_event_destination_create() {
    local configuration_set_name="$1"
    local event_destination="$2"
    shift 2

    p6_run_write_cmd aws ses create-configuration-set-event-destination --configuration-set-name $configuration_set_name --event-destination $event_destination "$@"
}
