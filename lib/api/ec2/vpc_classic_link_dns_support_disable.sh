######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpc_classic_link_dns_support_disable()
#
#
#
#>
######################################################################
p6_aws_ec2_vpc_classic_link_dns_support_disable() {

    p6_run_write_cmd aws ec2 disable-vpc-classic-link-dns-support "$@"
}