######################################################################
#<
#
# Function:
#	p6_aws_ssm_service_setting_reset(setting_id)
#
#  Args:
#	setting_id - 
#
#>
######################################################################
p6_aws_ssm_service_setting_reset() {
    local setting_id="$1"
    shift 1

    p6_run_write_cmd aws ssm reset-service-setting --setting-id $setting_id "$@"
}