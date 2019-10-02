######################################################################
#<
#
# Function:
#	p6_aws_ec2_traffic_mirror_filter_rule_delete(traffic_mirror_filter_rule_id)
#
#  Args:
#	traffic_mirror_filter_rule_id - 
#
#>
######################################################################
p6_aws_ec2_traffic_mirror_filter_rule_delete() {
    local traffic_mirror_filter_rule_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-traffic-mirror-filter-rule --traffic-mirror-filter-rule-id $traffic_mirror_filter_rule_id "$@"
}