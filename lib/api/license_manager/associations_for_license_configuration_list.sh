######################################################################
#<
#
# Function:
#	p6_aws_license_manager_associations_for_license_configuration_list(license_configuration_arn)
#
#  Args:
#	license_configuration_arn - 
#
#>
######################################################################
p6_aws_license_manager_associations_for_license_configuration_list() {
    local license_configuration_arn="$1"
    shift 1

    p6_run_read_cmd aws license-manager list-associations-for-license-configuration --license-configuration-arn $license_configuration_arn "$@"
}