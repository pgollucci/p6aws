######################################################################
#<
#
# Function:
#	p6_aws_chime_phone_number_restore(phone_number_id)
#
#  Args:
#	phone_number_id - 
#
#>
######################################################################
p6_aws_chime_phone_number_restore() {
    local phone_number_id="$1"
    shift 1

    p6_run_write_cmd aws chime restore-phone-number --phone-number-id $phone_number_id "$@"
}