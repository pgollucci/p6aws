######################################################################
#<
#
# Function:
#	p6_aws_license_manager_license_configuration_create(name, license_counting_type)
#
#  Args:
#	name - 
#	license_counting_type - 
#
#>
######################################################################
p6_aws_license_manager_license_configuration_create() {
    local name="$1"
    local license_counting_type="$2"
    shift 2

    p6_run_write_cmd aws license-manager create-license-configuration --name $name --license-counting-type $license_counting_type "$@"
}