p6_aws_ec2_volume_attribute_describe() {
    local volume_id="$1"
    shift 1

    p6_log_and_run aws ec2 describe-volume-attribute --volume-id $volume_id "$@"
}
