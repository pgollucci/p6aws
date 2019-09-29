######################################################################
#<
#
# Function:
#      = p6_aws_route53_reusable_delegation_set_delete(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_route53_reusable_delegation_set_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws route53 delete-reusable-delegation-set --id $id "$@"
}