######################################################################
#<
#
# Function:
#      = p6_aws_ec2_ebs_default_kms_key_id_get()
#
#
#
#>
######################################################################
p6_aws_ec2_ebs_default_kms_key_id_get() {

    p6_run_read_cmd aws ec2 get-ebs-default-kms-key-id "$@"
}