######################################################################
#<
#
# Function:
#	p6_aws_route53_hosted_zone_create(name, caller_reference)
#
#  Args:
#	name - 
#	caller_reference - 
#
#>
######################################################################
p6_aws_route53_hosted_zone_create() {
    local name="$1"
    local caller_reference="$2"
    shift 2

    p6_run_write_cmd aws route53 create-hosted-zone --name $name --caller-reference $caller_reference "$@"
}