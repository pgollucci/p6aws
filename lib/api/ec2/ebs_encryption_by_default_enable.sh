######################################################################
#<
#
# Function:
#      = p6_aws_ec2_ebs_encryption_by_default_enable()
#
#
#
#>
######################################################################
p6_aws_ec2_ebs_encryption_by_default_enable() {

    p6_run_write_cmd aws ec2 enable-ebs-encryption-by-default "$@"
}