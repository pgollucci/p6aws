######################################################################
#<
#
# Function:
#      = p6_aws_glue_dev_endpoints_list()
#
#
#
#>
######################################################################
p6_aws_glue_dev_endpoints_list() {

    p6_run_read_cmd aws glue list-dev-endpoints "$@"
}