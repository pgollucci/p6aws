p6_aws_mediapackage_ingest_endpoint_credentials_rotate() {
    local id="$1"
    local ingest_endpoint_id="$2"
    shift 2

    p6_log_or_run aws mediapackage rotate-ingest-endpoint-credentials --id $id --ingest-endpoint-id $ingest_endpoint_id "$@"
}
