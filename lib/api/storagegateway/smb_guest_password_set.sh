######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_smb_guest_password_set(gateway_arn, password)
#
# Arg(s):
#    gateway_arn - 
#    password - 
#
#
#>
######################################################################
p6_aws_storagegateway_smb_guest_password_set() {
    local gateway_arn="$1"
    local password="$2"
    shift 2

    p6_run_write_cmd aws storagegateway set-smb-guest-password --gateway-arn $gateway_arn --password $password "$@"
}