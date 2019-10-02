######################################################################
#<
#
# Function:
#	p6_aws_chime_phone_number_delete(phone_number_id)
#
#  Args:
#	phone_number_id - 
#
#>
######################################################################
p6_aws_chime_phone_number_delete() {
    local phone_number_id="$1"
    shift 1

    p6_run_write_cmd aws chime delete-phone-number --phone-number-id $phone_number_id "$@"
}