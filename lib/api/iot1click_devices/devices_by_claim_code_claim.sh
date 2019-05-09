p6_aws_iot1click_devices_devices_by_claim_code_claim() {
    local claim_code="$1"
    shift 1

    p6_log_or_run aws iot1click-devices claim-devices-by-claim-code --claim-code $claim_code "$@"
}
