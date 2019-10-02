######################################################################
#<
#
# Function:
#	p6_aws_ec2_traffic_mirror_filter_create()
#
#>
######################################################################
p6_aws_ec2_traffic_mirror_filter_create() {

    p6_run_write_cmd aws ec2 create-traffic-mirror-filter "$@"
}