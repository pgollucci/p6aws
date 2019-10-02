######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_tape_with_barcode_create(gateway_arn, tape_size_in_bytes, tape_barcode)
#
#  Args:
#	gateway_arn - 
#	tape_size_in_bytes - 
#	tape_barcode - 
#
#>
######################################################################
p6_aws_storagegateway_tape_with_barcode_create() {
    local gateway_arn="$1"
    local tape_size_in_bytes="$2"
    local tape_barcode="$3"
    shift 3

    p6_run_write_cmd aws storagegateway create-tape-with-barcode --gateway-arn $gateway_arn --tape-size-in-bytes $tape_size_in_bytes --tape-barcode $tape_barcode "$@"
}