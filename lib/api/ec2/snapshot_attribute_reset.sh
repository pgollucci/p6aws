######################################################################
#<
#
# Function:
#	p6_aws_ec2_snapshot_attribute_reset(attribute, snapshot_id)
#
#  Args:
#	attribute - 
#	snapshot_id - 
#
#>
######################################################################
p6_aws_ec2_snapshot_attribute_reset() {
    local attribute="$1"
    local snapshot_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 reset-snapshot-attribute --attribute $attribute --snapshot-id $snapshot_id "$@"
}