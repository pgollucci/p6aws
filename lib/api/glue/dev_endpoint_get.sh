######################################################################
#<
#
# Function:
#	p6_aws_glue_dev_endpoint_get(endpoint_name)
#
#  Args:
#	endpoint_name - 
#
#>
######################################################################
p6_aws_glue_dev_endpoint_get() {
    local endpoint_name="$1"
    shift 1

    p6_run_read_cmd aws glue get-dev-endpoint --endpoint-name $endpoint_name "$@"
}