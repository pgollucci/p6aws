######################################################################
#<
#
# Function:
#	p6_aws_route53_dns_answer_test(hosted_zone_id, record_name, record_type)
#
#  Args:
#	hosted_zone_id - 
#	record_name - 
#	record_type - 
#
#>
######################################################################
p6_aws_route53_dns_answer_test() {
    local hosted_zone_id="$1"
    local record_name="$2"
    local record_type="$3"
    shift 3

    p6_run_write_cmd aws route53 test-dns-answer --hosted-zone-id $hosted_zone_id --record-name $record_name --record-type $record_type "$@"
}