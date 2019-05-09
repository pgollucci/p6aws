p6_aws_meteringmarketplace_meter_usage_batch() {
    local usage_records="$1"
    local product_code="$2"
    shift 2

    p6_log_or_run aws meteringmarketplace batch-meter-usage --usage-records $usage_records --product-code $product_code "$@"
}
