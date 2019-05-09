p6_aws_ssm_inventory_put() {
    local instance_id="$1"
    local items="$2"
    shift 2

    p6_run_write_cmd aws ssm put-inventory --instance-id $instance_id --items $items "$@"
}
