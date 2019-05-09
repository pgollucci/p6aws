p6_aws_ses_configuration_set_event_destination_delete() {
    local configuration_set_name="$1"
    local event_destination_name="$2"
    shift 2

    p6_run_write_cmd aws ses delete-configuration-set-event-destination --configuration-set-name $configuration_set_name --event-destination-name $event_destination_name "$@"
}
