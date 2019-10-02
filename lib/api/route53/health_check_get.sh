######################################################################
#<
#
# Function:
#	p6_aws_route53_health_check_get(health_check_id)
#
#  Args:
#	health_check_id - 
#
#>
######################################################################
p6_aws_route53_health_check_get() {
    local health_check_id="$1"
    shift 1

    p6_run_read_cmd aws route53 get-health-check --health-check-id $health_check_id "$@"
}