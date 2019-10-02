######################################################################
#<
#
# Function:
#	p6_aws_glue_dev_endpoint_delete(endpoint_name)
#
#  Args:
#	endpoint_name - 
#
#>
######################################################################
p6_aws_glue_dev_endpoint_delete() {
    local endpoint_name="$1"
    shift 1

    p6_run_write_cmd aws glue delete-dev-endpoint --endpoint-name $endpoint_name "$@"
}