######################################################################
#<
#
# Function:
#      = p6_aws_iot1click_devices_devices_by_claim_code_claim(claim_code)
#
# Arg(s):
#    claim_code - 
#
#
#>
######################################################################
p6_aws_iot1click_devices_devices_by_claim_code_claim() {
    local claim_code="$1"
    shift 1

    p6_run_write_cmd aws iot1click-devices claim-devices-by-claim-code --claim-code $claim_code "$@"
}