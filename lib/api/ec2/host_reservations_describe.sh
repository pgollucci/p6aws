######################################################################
#<
#
# Function:
#	p6_aws_ec2_host_reservations_describe()
#
#>
######################################################################
p6_aws_ec2_host_reservations_describe() {

    p6_run_read_cmd aws ec2 describe-host-reservations "$@"
}