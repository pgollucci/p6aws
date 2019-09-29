######################################################################
#<
#
# Function:
#      = p6_aws_route53_traffic_policy_instances_by_hosted_zone_list(hosted_zone_id)
#
# Arg(s):
#    hosted_zone_id - 
#
#
#>
######################################################################
p6_aws_route53_traffic_policy_instances_by_hosted_zone_list() {
    local hosted_zone_id="$1"
    shift 1

    p6_run_read_cmd aws route53 list-traffic-policy-instances-by-hosted-zone --hosted-zone-id $hosted_zone_id "$@"
}