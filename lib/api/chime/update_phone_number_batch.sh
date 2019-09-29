######################################################################
#<
#
# Function:
#      = p6_aws_chime_update_phone_number_batch(update_phone_number_request_items)
#
# Arg(s):
#    update_phone_number_request_items - 
#
#
#>
######################################################################
p6_aws_chime_update_phone_number_batch() {
    local update_phone_number_request_items="$1"
    shift 1

    p6_run_write_cmd aws chime batch-update-phone-number --update-phone-number-request-items $update_phone_number_request_items "$@"
}