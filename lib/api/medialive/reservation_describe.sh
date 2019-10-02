######################################################################
#<
#
# Function:
#	p6_aws_medialive_reservation_describe(reservation_id)
#
#  Args:
#	reservation_id - 
#
#>
######################################################################
p6_aws_medialive_reservation_describe() {
    local reservation_id="$1"
    shift 1

    p6_run_read_cmd aws medialive describe-reservation --reservation-id $reservation_id "$@"
}