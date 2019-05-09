p6_aws_chime_phone_number_update() {
    local phone_number_id="$1"
    shift 1

    p6_run_write_cmd aws chime update-phone-number --phone-number-id $phone_number_id "$@"
}
