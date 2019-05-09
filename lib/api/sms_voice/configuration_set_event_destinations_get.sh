p6_aws_sms_voice_configuration_set_event_destinations_get() {
    local configuration_set_name="$1"
    shift 1

    p6_log_and_run aws sms-voice get-configuration-set-event-destinations --configuration-set-name $configuration_set_name "$@"
}
