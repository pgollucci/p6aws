######################################################################
#<
#
# Function:
#      = p6_aws_kms_custom_key_store_update(custom_key_store_id)
#
# Arg(s):
#    custom_key_store_id - 
#
#
#>
######################################################################
p6_aws_kms_custom_key_store_update() {
    local custom_key_store_id="$1"
    shift 1

    p6_run_write_cmd aws kms update-custom-key-store --custom-key-store-id $custom_key_store_id "$@"
}