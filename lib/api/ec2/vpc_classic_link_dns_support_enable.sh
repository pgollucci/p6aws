######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpc_classic_link_dns_support_enable()
#
#
#
#>
######################################################################
p6_aws_ec2_vpc_classic_link_dns_support_enable() {

    p6_run_write_cmd aws ec2 enable-vpc-classic-link-dns-support "$@"
}