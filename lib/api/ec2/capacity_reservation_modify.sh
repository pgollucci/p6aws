######################################################################
#<
#
# Function:
#	p6_aws_ec2_capacity_reservation_modify(capacity_reservation_id)
#
#  Args:
#	capacity_reservation_id - 
#
#>
######################################################################
p6_aws_ec2_capacity_reservation_modify() {
    local capacity_reservation_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-capacity-reservation --capacity-reservation-id $capacity_reservation_id "$@"
}