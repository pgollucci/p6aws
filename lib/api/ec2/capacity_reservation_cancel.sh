######################################################################
#<
#
# Function:
#      = p6_aws_ec2_capacity_reservation_cancel(capacity_reservation_id)
#
# Arg(s):
#    capacity_reservation_id - 
#
#
#>
######################################################################
p6_aws_ec2_capacity_reservation_cancel() {
    local capacity_reservation_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 cancel-capacity-reservation --capacity-reservation-id $capacity_reservation_id "$@"
}