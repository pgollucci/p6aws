p6_aws_ec2_capacity_reservation_create() {
    local instance_type="$1"
    local instance_platform="$2"
    local instance_count="$3"
    shift 3

    p6_run_write_cmd aws ec2 create-capacity-reservation --instance-type $instance_type --instance-platform $instance_platform --instance-count $instance_count "$@"
}
