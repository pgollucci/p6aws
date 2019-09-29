######################################################################
#<
#
# Function:
#      = p6_aws_kms_custom_key_store_connect(custom_key_store_id)
#
# Arg(s):
#    custom_key_store_id - 
#
#
#>
######################################################################
p6_aws_kms_custom_key_store_connect() {
    local custom_key_store_id="$1"
    shift 1

    p6_run_write_cmd aws kms connect-custom-key-store --custom-key-store-id $custom_key_store_id "$@"
}