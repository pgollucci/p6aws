p6_aws_meteringmarketplace_meter_usage_batch() {
    local usage_records="$1"
    local product_code="$2"
    shift 2

    p6_run_write_cmd aws meteringmarketplace batch-meter-usage --usage-records $usage_records --product-code $product_code "$@"
}
