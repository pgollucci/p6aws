p6_aws_inspector_telemetry_metadata_get() {
    local assessment_run_arn="$1"
    shift 1

    p6_log_and_run aws inspector get-telemetry-metadata --assessment-run-arn $assessment_run_arn "$@"
}
