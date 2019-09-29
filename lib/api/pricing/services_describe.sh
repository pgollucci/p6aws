######################################################################
#<
#
# Function:
#      = p6_aws_pricing_services_describe()
#
#
#
#>
######################################################################
p6_aws_pricing_services_describe() {

    p6_run_read_cmd aws pricing describe-services "$@"
}