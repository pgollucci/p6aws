p6_aws_medialive_reservation_describe() {
    local reservation_id="$1"
    shift 1

    p6_log_and_run aws medialive describe-reservation --reservation-id $reservation_id "$@"
}
