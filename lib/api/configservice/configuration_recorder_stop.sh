p6_aws_configservice_configuration_recorder_stop() {
    local configuration_recorder_name="$1"
    shift 1

    p6_run_write_cmd aws configservice stop-configuration-recorder --configuration-recorder-name $configuration_recorder_name "$@"
}
