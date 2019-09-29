######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_device_forget(device_key)
#
# Arg(s):
#    device_key - 
#
#
#>
######################################################################
p6_aws_cognito_idp_device_forget() {
    local device_key="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp forget-device --device-key $device_key "$@"
}