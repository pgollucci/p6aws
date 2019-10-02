######################################################################
#<
#
# Function:
#	p6_aws_iot_endpoint_describe()
#
#>
######################################################################
p6_aws_iot_endpoint_describe() {

    p6_run_read_cmd aws iot describe-endpoint "$@"
}