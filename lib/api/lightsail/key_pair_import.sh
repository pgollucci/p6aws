p6_aws_lightsail_key_pair_import() {
    local key_pair_name="$1"
    local public_key_base64="$2"
    shift 2

    p6_log_or_run aws lightsail import-key-pair --key-pair-name $key_pair_name --public-key-base64 $public_key_base64 "$@"
}
