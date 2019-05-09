p6_aws_sns_in_phone_number_opt() {
    local phone_number="$1"
    shift 1

    p6_run_write_cmd aws sns opt-in-phone-number --phone-number $phone_number "$@"
}
