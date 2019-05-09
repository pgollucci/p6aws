p6_aws_sms_voice_configuration_set_event_destination_create() {
    local configuration_set_name="$1"
    shift 1

    p6_log_or_run aws sms-voice create-configuration-set-event-destination --configuration-set-name $configuration_set_name "$@"
}
