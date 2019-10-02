######################################################################
#<
#
# Function:
#	p6_aws_medialive_reservation_update(reservation_id)
#
#  Args:
#	reservation_id - 
#
#>
######################################################################
p6_aws_medialive_reservation_update() {
    local reservation_id="$1"
    shift 1

    p6_run_write_cmd aws medialive update-reservation --reservation-id $reservation_id "$@"
}