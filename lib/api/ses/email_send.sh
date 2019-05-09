p6_aws_ses_email_send() {
    local from="$1"
    shift 1

    p6_log_or_run aws ses send-email --from $from "$@"
}
