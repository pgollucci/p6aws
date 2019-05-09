p6_aws_iotanalytics_logging_options_put() {
    local logging_options="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics put-logging-options --logging-options $logging_options "$@"
}
