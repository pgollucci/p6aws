######################################################################
#<
#
# Function:
#	p6_aws_route53_resource_record_sets_change(hosted_zone_id, change_batch)
#
#  Args:
#	hosted_zone_id - 
#	change_batch - 
#
#>
######################################################################
p6_aws_route53_resource_record_sets_change() {
    local hosted_zone_id="$1"
    local change_batch="$2"
    shift 2

    p6_run_write_cmd aws route53 change-resource-record-sets --hosted-zone-id $hosted_zone_id --change-batch $change_batch "$@"
}