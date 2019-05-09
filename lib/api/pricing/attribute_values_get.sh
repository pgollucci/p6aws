p6_aws_pricing_attribute_values_get() {
    local service_code="$1"
    local attribute_name="$2"
    shift 2

    p6_run_read_cmd aws pricing get-attribute-values --service-code $service_code --attribute-name $attribute_name "$@"
}
