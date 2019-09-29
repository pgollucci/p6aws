######################################################################
#<
#
# Function:
#      = p6_aws_ec2_traffic_mirror_filter_delete(traffic_mirror_filter_id)
#
# Arg(s):
#    traffic_mirror_filter_id - 
#
#
#>
######################################################################
p6_aws_ec2_traffic_mirror_filter_delete() {
    local traffic_mirror_filter_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-traffic-mirror-filter --traffic-mirror-filter-id $traffic_mirror_filter_id "$@"
}