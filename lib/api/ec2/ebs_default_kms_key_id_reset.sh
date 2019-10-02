######################################################################
#<
#
# Function:
#	p6_aws_ec2_ebs_default_kms_key_id_reset()
#
#>
######################################################################
p6_aws_ec2_ebs_default_kms_key_id_reset() {

    p6_run_write_cmd aws ec2 reset-ebs-default-kms-key-id "$@"
}