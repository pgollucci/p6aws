######################################################################
#<
#
# Function:
#      = p6_aws_ec2_traffic_mirror_target_create()
#
#
#
#>
######################################################################
p6_aws_ec2_traffic_mirror_target_create() {

    p6_run_read_cmd aws ec2 create-traffic-mirror-target "$@"
}