######################################################################
#<
#
# Function:
#      = p6_aws_ec2_reserved_instances_listings_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_reserved_instances_listings_describe() {

    p6_run_read_cmd aws ec2 describe-reserved-instances-listings "$@"
}