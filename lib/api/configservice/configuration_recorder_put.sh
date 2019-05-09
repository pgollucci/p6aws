p6_aws_configservice_configuration_recorder_put() {
    local configuration_recorder="$1"
    shift 1

    p6_run_write_cmd aws configservice put-configuration-recorder --configuration-recorder $configuration_recorder "$@"
}
