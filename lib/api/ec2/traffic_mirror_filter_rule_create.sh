######################################################################
#<
#
# Function:
#	p6_aws_ec2_traffic_mirror_filter_rule_create(traffic_mirror_filter_id, traffic_direction, rule_number, rule_action, destination_cidr_block, source_cidr_block)
#
#  Args:
#	traffic_mirror_filter_id - 
#	traffic_direction - 
#	rule_number - 
#	rule_action - 
#	destination_cidr_block - 
#	source_cidr_block - 
#
#>
######################################################################
p6_aws_ec2_traffic_mirror_filter_rule_create() {
    local traffic_mirror_filter_id="$1"
    local traffic_direction="$2"
    local rule_number="$3"
    local rule_action="$4"
    local destination_cidr_block="$5"
    local source_cidr_block="$6"
    shift 6

    p6_run_write_cmd aws ec2 create-traffic-mirror-filter-rule --traffic-mirror-filter-id $traffic_mirror_filter_id --traffic-direction $traffic_direction --rule-number $rule_number --rule-action $rule_action --destination-cidr-block $destination_cidr_block --source-cidr-block $source_cidr_block "$@"
}