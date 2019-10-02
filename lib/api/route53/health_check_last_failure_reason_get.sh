######################################################################
#<
#
# Function:
#	p6_aws_route53_health_check_last_failure_reason_get(health_check_id)
#
#  Args:
#	health_check_id - 
#
#>
######################################################################
p6_aws_route53_health_check_last_failure_reason_get() {
    local health_check_id="$1"
    shift 1

    p6_run_read_cmd aws route53 get-health-check-last-failure-reason --health-check-id $health_check_id "$@"
}