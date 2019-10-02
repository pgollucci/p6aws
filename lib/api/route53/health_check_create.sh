######################################################################
#<
#
# Function:
#	p6_aws_route53_health_check_create(caller_reference, health_check_config)
#
#  Args:
#	caller_reference - 
#	health_check_config - 
#
#>
######################################################################
p6_aws_route53_health_check_create() {
    local caller_reference="$1"
    local health_check_config="$2"
    shift 2

    p6_run_write_cmd aws route53 create-health-check --caller-reference $caller_reference --health-check-config $health_check_config "$@"
}