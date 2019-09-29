######################################################################
#<
#
# Function:
#      = p6_aws_iam_service_specific_credential_delete(service_specific_credential_id)
#
# Arg(s):
#    service_specific_credential_id - 
#
#
#>
######################################################################
p6_aws_iam_service_specific_credential_delete() {
    local service_specific_credential_id="$1"
    shift 1

    p6_run_write_cmd aws iam delete-service-specific-credential --service-specific-credential-id $service_specific_credential_id "$@"
}