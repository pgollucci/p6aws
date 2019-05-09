p6_aws_importexport_shipping_label_get() {
    local job_ids="$1"
    shift 1

    p6_run_read_cmd aws importexport get-shipping-label --job-ids $job_ids "$@"
}
