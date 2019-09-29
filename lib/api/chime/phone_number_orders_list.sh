######################################################################
#<
#
# Function:
#      = p6_aws_chime_phone_number_orders_list()
#
#
#
#>
######################################################################
p6_aws_chime_phone_number_orders_list() {

    p6_run_read_cmd aws chime list-phone-number-orders "$@"
}