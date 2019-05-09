p6_aws_ssm_service_setting_get() {
    local setting_id="$1"
    shift 1

    p6_run_read_cmd aws ssm get-service-setting --setting-id $setting_id "$@"
}
