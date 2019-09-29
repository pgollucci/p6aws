######################################################################
#<
#
# Function:
#      = p6_aws_route53_hosted_zone_get(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_route53_hosted_zone_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws route53 get-hosted-zone --id $id "$@"
}