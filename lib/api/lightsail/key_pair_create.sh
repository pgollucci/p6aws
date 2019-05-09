p6_aws_lightsail_key_pair_create() {
    local key_pair_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail create-key-pair --key-pair-name $key_pair_name "$@"
}
