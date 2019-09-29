######################################################################
#<
#
# Function:
#      = p6_aws_ec2_spot_fleet_requests_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_spot_fleet_requests_describe() {

    p6_run_read_cmd aws ec2 describe-spot-fleet-requests "$@"
}