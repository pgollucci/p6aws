p6_aws_glue_get_dev_endpoints_batch() {
    local dev_endpoint_names="$1"
    shift 1

    p6_run_read_cmd aws glue batch-get-dev-endpoints --dev-endpoint-names $dev_endpoint_names "$@"
}
