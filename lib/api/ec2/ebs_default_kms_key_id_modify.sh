######################################################################
#<
#
# Function:
#	p6_aws_ec2_ebs_default_kms_key_id_modify(kms_key_id)
#
#  Args:
#	kms_key_id - 
#
#>
######################################################################
p6_aws_ec2_ebs_default_kms_key_id_modify() {
    local kms_key_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-ebs-default-kms-key-id --kms-key-id $kms_key_id "$@"
}