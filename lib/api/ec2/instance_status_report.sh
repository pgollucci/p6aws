######################################################################
#<
#
# Function:
#	p6_aws_ec2_instance_status_report(instances, reason_codes, status)
#
#  Args:
#	instances - 
#	reason_codes - 
#	status - 
#
#>
######################################################################
p6_aws_ec2_instance_status_report() {
    local instances="$1"
    local reason_codes="$2"
    local status="$3"
    shift 3

    p6_run_write_cmd aws ec2 report-instance-status --instances $instances --reason-codes $reason_codes --status $status "$@"
}