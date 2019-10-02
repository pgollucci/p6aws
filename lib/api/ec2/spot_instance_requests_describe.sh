######################################################################
#<
#
# Function:
#	p6_aws_ec2_spot_instance_requests_describe()
#
#>
######################################################################
p6_aws_ec2_spot_instance_requests_describe() {

    p6_run_read_cmd aws ec2 describe-spot-instance-requests "$@"
}