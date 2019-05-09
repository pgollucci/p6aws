p6_aws_chime_phone_number_order_create() {
    local product_type="$1"
    local e164_phone_numbers="$2"
    shift 2

    p6_run_write_cmd aws chime create-phone-number-order --product-type $product_type --e164-phone-numbers $e164_phone_numbers "$@"
}
