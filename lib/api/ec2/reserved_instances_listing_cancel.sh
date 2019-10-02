######################################################################
#<
#
# Function:
#	p6_aws_ec2_reserved_instances_listing_cancel(reserved_instances_listing_id)
#
#  Args:
#	reserved_instances_listing_id - 
#
#>
######################################################################
p6_aws_ec2_reserved_instances_listing_cancel() {
    local reserved_instances_listing_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 cancel-reserved-instances-listing --reserved-instances-listing-id $reserved_instances_listing_id "$@"
}