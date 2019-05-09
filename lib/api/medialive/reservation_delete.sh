p6_aws_medialive_reservation_delete() {
    local reservation_id="$1"
    shift 1

    p6_log_or_run aws medialive delete-reservation --reservation-id $reservation_id "$@"
}
