p6_aws_iotanalytics_logging_options_put() {
    local logging_options="$1"
    shift 1

    p6_log_or_run aws iotanalytics put-logging-options --logging-options $logging_options "$@"
}
