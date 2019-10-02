######################################################################
#<
#
# Function:
#	p6_aws_ec2_fleets_describe()
#
#>
######################################################################
p6_aws_ec2_fleets_describe() {

    p6_run_read_cmd aws ec2 describe-fleets "$@"
}