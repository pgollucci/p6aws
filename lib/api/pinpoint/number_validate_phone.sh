p6_aws_pinpoint_number_validate_phone() {
    local number_validate_request="$1"
    shift 1

    p6_log_or_run aws pinpoint phone-number-validate --number-validate-request $number_validate_request "$@"
}
