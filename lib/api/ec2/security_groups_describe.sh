######################################################################
#<
#
# Function:
#	p6_aws_ec2_security_groups_describe()
#
#>
######################################################################
p6_aws_ec2_security_groups_describe() {

    p6_run_read_cmd aws ec2 describe-security-groups "$@"
}