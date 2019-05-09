p6_aws_iot_logging_options_set() {
    local logging_options_payload="$1"
    shift 1

    p6_log_or_run aws iot set-logging-options --logging-options-payload $logging_options_payload "$@"
}
