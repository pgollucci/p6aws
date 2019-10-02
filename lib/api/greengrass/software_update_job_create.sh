######################################################################
#<
#
# Function:
#	p6_aws_greengrass_software_update_job_create(s3_url_signer_role, software_to_update, update_targets, update_targets_architecture, update_targets_operating_system)
#
#  Args:
#	s3_url_signer_role - 
#	software_to_update - 
#	update_targets - 
#	update_targets_architecture - 
#	update_targets_operating_system - 
#
#>
######################################################################
p6_aws_greengrass_software_update_job_create() {
    local s3_url_signer_role="$1"
    local software_to_update="$2"
    local update_targets="$3"
    local update_targets_architecture="$4"
    local update_targets_operating_system="$5"
    shift 5

    p6_run_write_cmd aws greengrass create-software-update-job --s3-url-signer-role $s3_url_signer_role --software-to-update $software_to_update --update-targets $update_targets --update-targets-architecture $update_targets_architecture --update-targets-operating-system $update_targets_operating_system "$@"
}