p6_aws_ec2_ebs_encryption_by_default_disable() {

    p6_run_write_cmd aws ec2 disable-ebs-encryption-by-default "$@"
}
