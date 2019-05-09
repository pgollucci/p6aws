p6_aws_sns_endpoint_attributes_set() {
    local endpoint_arn="$1"
    local attributes="$2"
    shift 2

    p6_run_write_cmd aws sns set-endpoint-attributes --endpoint-arn $endpoint_arn --attributes $attributes "$@"
}
