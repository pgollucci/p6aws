######################################################################
#<
#
# Function:
#	p6_aws_mobile_bundles_list()
#
#>
######################################################################
p6_aws_mobile_bundles_list() {

    p6_run_read_cmd aws mobile list-bundles "$@"
}