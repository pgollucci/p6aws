######################################################################
#<
#
# Function:
#      = p6_aws_ssm_service_setting_update(setting_id, setting_value)
#
# Arg(s):
#    setting_id - 
#    setting_value - 
#
#
#>
######################################################################
p6_aws_ssm_service_setting_update() {
    local setting_id="$1"
    local setting_value="$2"
    shift 2

    p6_run_write_cmd aws ssm update-service-setting --setting-id $setting_id --setting-value $setting_value "$@"
}