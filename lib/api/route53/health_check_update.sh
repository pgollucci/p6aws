######################################################################
#<
#
# Function:
#      = p6_aws_route53_health_check_update(health_check_id)
#
# Arg(s):
#    health_check_id - 
#
#
#>
######################################################################
p6_aws_route53_health_check_update() {
    local health_check_id="$1"
    shift 1

    p6_run_write_cmd aws route53 update-health-check --health-check-id $health_check_id "$@"
}