######################################################################
#<
#
# Function:
#      = p6_aws_signer_signing_platform_get(platform_id)
#
# Arg(s):
#    platform_id - 
#
#
#>
######################################################################
p6_aws_signer_signing_platform_get() {
    local platform_id="$1"
    shift 1

    p6_run_read_cmd aws signer get-signing-platform --platform-id $platform_id "$@"
}