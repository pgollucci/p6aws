p6_aws_ec2_vpc_classic_link_dns_support_disable() {

    p6_log_or_run aws ec2 disable-vpc-classic-link-dns-support "$@"
}
