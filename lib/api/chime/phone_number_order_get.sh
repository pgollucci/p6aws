######################################################################
#<
#
# Function:
#      = p6_aws_chime_phone_number_order_get(phone_number_order_id)
#
# Arg(s):
#    phone_number_order_id - 
#
#
#>
######################################################################
p6_aws_chime_phone_number_order_get() {
    local phone_number_order_id="$1"
    shift 1

    p6_run_read_cmd aws chime get-phone-number-order --phone-number-order-id $phone_number_order_id "$@"
}