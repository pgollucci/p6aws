######################################################################
#<
#
# Function:
#	p6_aws_route53_geo_location_get()
#
#>
######################################################################
p6_aws_route53_geo_location_get() {

    p6_run_read_cmd aws route53 get-geo-location "$@"
}