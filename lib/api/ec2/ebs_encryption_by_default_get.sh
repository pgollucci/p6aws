p6_aws_ec2_ebs_encryption_by_default_get() {

    p6_run_read_cmd aws ec2 get-ebs-encryption-by-default "$@"
}
