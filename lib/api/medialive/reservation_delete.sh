p6_aws_medialive_reservation_delete() {
    local reservation_id="$1"
    shift 1

    p6_run_write_cmd aws medialive delete-reservation --reservation-id $reservation_id "$@"
}
