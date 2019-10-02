######################################################################
#<
#
# Function:
#	p6_aws_route53_geo_locations_list()
#
#>
######################################################################
p6_aws_route53_geo_locations_list() {

    p6_run_read_cmd aws route53 list-geo-locations "$@"
}