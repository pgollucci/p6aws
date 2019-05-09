p6_aws_ec2_vpc_classic_link_dns_support_enable() {

    p6_log_or_run aws ec2 enable-vpc-classic-link-dns-support "$@"
}
