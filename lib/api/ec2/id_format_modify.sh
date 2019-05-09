p6_aws_ec2_id_format_modify() {
    local resource="$1"
    local use_long_ids="$2"
    shift 2

    p6_run_write_cmd aws ec2 modify-id-format --resource $resource --use-long-ids $use_long_ids "$@"
}
