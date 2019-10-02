######################################################################
#<
#
# Function:
#	p6_aws_ec2_byoip_cidr_withdraw(cidr)
#
#  Args:
#	cidr - 
#
#>
######################################################################
p6_aws_ec2_byoip_cidr_withdraw() {
    local cidr="$1"
    shift 1

    p6_run_write_cmd aws ec2 withdraw-byoip-cidr --cidr $cidr "$@"
}