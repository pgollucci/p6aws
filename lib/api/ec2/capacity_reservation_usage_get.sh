p6_aws_ec2_capacity_reservation_usage_get() {
    local capacity_reservation_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 get-capacity-reservation-usage --capacity-reservation-id $capacity_reservation_id "$@"
}
