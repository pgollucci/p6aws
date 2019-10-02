######################################################################
#<
#
# Function:
#	p6_aws_ec2_traffic_mirror_targets_describe()
#
#>
######################################################################
p6_aws_ec2_traffic_mirror_targets_describe() {

    p6_run_read_cmd aws ec2 describe-traffic-mirror-targets "$@"
}