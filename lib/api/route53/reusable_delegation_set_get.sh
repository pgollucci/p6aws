######################################################################
#<
#
# Function:
#	p6_aws_route53_reusable_delegation_set_get(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_route53_reusable_delegation_set_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws route53 get-reusable-delegation-set --id $id "$@"
}