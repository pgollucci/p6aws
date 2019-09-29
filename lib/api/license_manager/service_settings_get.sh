######################################################################
#<
#
# Function:
#      = p6_aws_license_manager_service_settings_get()
#
#
#
#>
######################################################################
p6_aws_license_manager_service_settings_get() {

    p6_run_read_cmd aws license-manager get-service-settings "$@"
}