p6_aws_storagegateway_tape_with_barcode_create() {
    local gateway_arn="$1"
    local tape_size_in_bytes="$2"
    local tape_barcode="$3"
    shift 3

    p6_log_or_run aws storagegateway create-tape-with-barcode --gateway-arn $gateway_arn --tape-size-in-bytes $tape_size_in_bytes --tape-barcode $tape_barcode "$@"
}
