######################################################################
#<
#
# Function:
#      = p6_aws_route53_hosted_zones_by_name_list()
#
#
#
#>
######################################################################
p6_aws_route53_hosted_zones_by_name_list() {

    p6_run_read_cmd aws route53 list-hosted-zones-by-name "$@"
}