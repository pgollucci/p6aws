######################################################################
#<
#
# Function:
#	p6_aws_kinesisvideo_data_endpoint_get(api_name)
#
#  Args:
#	api_name - 
#
#>
######################################################################
p6_aws_kinesisvideo_data_endpoint_get() {
    local api_name="$1"
    shift 1

    p6_run_read_cmd aws kinesisvideo get-data-endpoint --api-name $api_name "$@"
}