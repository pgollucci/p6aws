p6_aws_sms_voice_configuration_set_event_destination_update() {
    local configuration_set_name="$1"
    local event_destination_name="$2"
    shift 2

    p6_log_or_run aws sms-voice update-configuration-set-event-destination --configuration-set-name $configuration_set_name --event-destination-name $event_destination_name "$@"
}
