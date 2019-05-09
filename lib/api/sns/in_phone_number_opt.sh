p6_aws_sns_in_phone_number_opt() {
    local phone_number="$1"
    shift 1

    p6_log_or_run aws sns opt-in-phone-number --phone-number $phone_number "$@"
}
