p6_aws_alexaforbusiness_gateway_group_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness create-gateway-group --name $name "$@"
}
