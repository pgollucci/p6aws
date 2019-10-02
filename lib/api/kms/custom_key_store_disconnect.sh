######################################################################
#<
#
# Function:
#	p6_aws_kms_custom_key_store_disconnect(custom_key_store_id)
#
#  Args:
#	custom_key_store_id - 
#
#>
######################################################################
p6_aws_kms_custom_key_store_disconnect() {
    local custom_key_store_id="$1"
    shift 1

    p6_run_write_cmd aws kms disconnect-custom-key-store --custom-key-store-id $custom_key_store_id "$@"
}