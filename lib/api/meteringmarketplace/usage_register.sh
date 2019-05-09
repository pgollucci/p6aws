p6_aws_meteringmarketplace_usage_register() {
    local product_code="$1"
    local public_key_version="$2"
    shift 2

    p6_log_or_run aws meteringmarketplace register-usage --product-code $product_code --public-key-version $public_key_version "$@"
}
