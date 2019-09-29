######################################################################
#<
#
# Function:
#      = p6_aws_chime_phone_number_get(phone_number_id)
#
# Arg(s):
#    phone_number_id - 
#
#
#>
######################################################################
p6_aws_chime_phone_number_get() {
    local phone_number_id="$1"
    shift 1

    p6_run_read_cmd aws chime get-phone-number --phone-number-id $phone_number_id "$@"
}