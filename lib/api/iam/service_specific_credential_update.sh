######################################################################
#<
#
# Function:
#	p6_aws_iam_service_specific_credential_update(service_specific_credential_id, status)
#
#  Args:
#	service_specific_credential_id - 
#	status - 
#
#>
######################################################################
p6_aws_iam_service_specific_credential_update() {
    local service_specific_credential_id="$1"
    local status="$2"
    shift 2

    p6_run_write_cmd aws iam update-service-specific-credential --service-specific-credential-id $service_specific_credential_id --status $status "$@"
}