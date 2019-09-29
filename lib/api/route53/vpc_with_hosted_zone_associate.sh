######################################################################
#<
#
# Function:
#      = p6_aws_route53_vpc_with_hosted_zone_associate(hosted_zone_id, vpc)
#
# Arg(s):
#    hosted_zone_id - 
#    vpc - 
#
#
#>
######################################################################
p6_aws_route53_vpc_with_hosted_zone_associate() {
    local hosted_zone_id="$1"
    local vpc="$2"
    shift 2

    p6_run_write_cmd aws route53 associate-vpc-with-hosted-zone --hosted-zone-id $hosted_zone_id --vpc $vpc "$@"
}