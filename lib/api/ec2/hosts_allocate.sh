p6_aws_ec2_hosts_allocate() {
    local availability_zone="$1"
    local instance_type="$2"
    local quantity="$3"
    shift 3

    p6_log_or_run aws ec2 allocate-hosts --availability-zone $availability_zone --instance-type $instance_type --quantity $quantity "$@"
}
