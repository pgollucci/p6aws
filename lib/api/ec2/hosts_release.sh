######################################################################
#<
#
# Function:
#	p6_aws_ec2_hosts_release(host_ids)
#
#  Args:
#	host_ids - 
#
#>
######################################################################
p6_aws_ec2_hosts_release() {
    local host_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 release-hosts --host-ids $host_ids "$@"
}