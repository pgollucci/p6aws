p6_aws_sns_if_phone_number_is_opted_out_check() {
    local phone_number="$1"
    shift 1

    p6_log_or_run aws sns check-if-phone-number-is-opted-out --phone-number $phone_number "$@"
}
