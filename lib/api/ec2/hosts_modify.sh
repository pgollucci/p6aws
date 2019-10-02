######################################################################
#<
#
# Function:
#	p6_aws_ec2_hosts_modify(host_ids)
#
#  Args:
#	host_ids - 
#
#>
######################################################################
p6_aws_ec2_hosts_modify() {
    local host_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-hosts --host-ids $host_ids "$@"
}