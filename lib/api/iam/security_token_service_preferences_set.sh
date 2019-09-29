######################################################################
#<
#
# Function:
#      = p6_aws_iam_security_token_service_preferences_set(global_endpoint_token_version)
#
# Arg(s):
#    global_endpoint_token_version - 
#
#
#>
######################################################################
p6_aws_iam_security_token_service_preferences_set() {
    local global_endpoint_token_version="$1"
    shift 1

    p6_run_write_cmd aws iam set-security-token-service-preferences --global-endpoint-token-version $global_endpoint_token_version "$@"
}