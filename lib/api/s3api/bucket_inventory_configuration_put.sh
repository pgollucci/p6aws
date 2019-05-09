p6_aws_s3api_bucket_inventory_configuration_put() {
    local bucket="$1"
    local id="$2"
    local inventory_configuration="$3"
    shift 3

    p6_log_or_run aws s3api put-bucket-inventory-configuration --bucket $bucket --id $id --inventory-configuration $inventory_configuration "$@"
}
