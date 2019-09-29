######################################################################
#<
#
# Function:
#      = p6_aws_route53_change_get(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_route53_change_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws route53 get-change --id $id "$@"
}