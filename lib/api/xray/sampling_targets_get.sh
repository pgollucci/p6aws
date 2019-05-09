p6_aws_xray_sampling_targets_get() {
    local sampling_statistics_documents="$1"
    shift 1

    p6_log_and_run aws xray get-sampling-targets --sampling-statistics-documents $sampling_statistics_documents "$@"
}
