p6_aws_iot_v2_logging_level_set() {
    local log_target="$1"
    local log_level="$2"
    shift 2

    p6_run_write_cmd aws iot set-v2-logging-level --log-target $log_target --log-level $log_level "$@"
}
