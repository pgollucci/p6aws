p6_aws_ec2_instance_connect_ssh_public_key_send() {
    local instance_id="$1"
    local instance_os_user="$2"
    local ssh_public_key="$3"
    local availability_zone="$4"
    shift 4

    p6_run_write_cmd aws ec2-instance-connect send-ssh-public-key --instance-id $instance_id --instance-os-user $instance_os_user --ssh-public-key $ssh_public_key --availability-zone $availability_zone "$@"
}
