######################################################################
#<
#
# Function:
#	p6_aws_elasticbeanstalk_dns_availability_check(cname_prefix)
#
#  Args:
#	cname_prefix - 
#
#>
######################################################################
p6_aws_elasticbeanstalk_dns_availability_check() {
    local cname_prefix="$1"
    shift 1

    p6_run_write_cmd aws elasticbeanstalk check-dns-availability --cname-prefix $cname_prefix "$@"
}