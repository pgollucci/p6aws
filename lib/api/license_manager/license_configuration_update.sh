######################################################################
#<
#
# Function:
#	p6_aws_license_manager_license_configuration_update(license_configuration_arn)
#
#  Args:
#	license_configuration_arn - 
#
#>
######################################################################
p6_aws_license_manager_license_configuration_update() {
    local license_configuration_arn="$1"
    shift 1

    p6_run_write_cmd aws license-manager update-license-configuration --license-configuration-arn $license_configuration_arn "$@"
}