######################################################################
#<
#
# Function:
#	p6_aws_ec2_identity_id_format_modify(principal_arn, resource, use_long_ids)
#
#  Args:
#	principal_arn - 
#	resource - 
#	use_long_ids - 
#
#>
######################################################################
p6_aws_ec2_identity_id_format_modify() {
    local principal_arn="$1"
    local resource="$2"
    local use_long_ids="$3"
    shift 3

    p6_run_write_cmd aws ec2 modify-identity-id-format --principal-arn $principal_arn --resource $resource --use-long-ids $use_long_ids "$@"
}