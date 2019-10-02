######################################################################
#<
#
# Function:
#	p6_aws_license_manager_service_settings_update()
#
#>
######################################################################
p6_aws_license_manager_service_settings_update() {

    p6_run_write_cmd aws license-manager update-service-settings "$@"
}