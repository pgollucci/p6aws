######################################################################
#<
#
# Function:
#	p6_aws_chime_delete_phone_number_batch(phone_number_ids)
#
#  Args:
#	phone_number_ids - 
#
#>
######################################################################
p6_aws_chime_delete_phone_number_batch() {
    local phone_number_ids="$1"
    shift 1

    p6_run_write_cmd aws chime batch-delete-phone-number --phone-number-ids $phone_number_ids "$@"
}