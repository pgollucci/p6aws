######################################################################
#<
#
# Function:
#      = p6_aws_glue_dev_endpoints_get()
#
#
#
#>
######################################################################
p6_aws_glue_dev_endpoints_get() {

    p6_run_read_cmd aws glue get-dev-endpoints "$@"
}