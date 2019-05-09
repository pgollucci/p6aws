p6_aws_ses_raw_email_send() {
    local raw_message="$1"
    shift 1

    p6_log_or_run aws ses send-raw-email --raw-message $raw_message "$@"
}
