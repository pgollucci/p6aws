######################################################################
#<
#
# Function:
#	p6_aws_route53_hosted_zone_delete(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_route53_hosted_zone_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws route53 delete-hosted-zone --id $id "$@"
}