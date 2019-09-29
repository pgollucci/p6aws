######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_smb_security_strategy_update(gateway_arn, smb_security_strategy)
#
# Arg(s):
#    gateway_arn - 
#    smb_security_strategy - 
#
#
#>
######################################################################
p6_aws_storagegateway_smb_security_strategy_update() {
    local gateway_arn="$1"
    local smb_security_strategy="$2"
    shift 2

    p6_run_write_cmd aws storagegateway update-smb-security-strategy --gateway-arn $gateway_arn --smb-security-strategy $smb_security_strategy "$@"
}