######################################################################
#<
#
# Function:
#	p6_aws_iot_default_authorizer_clear()
#
#>
######################################################################
p6_aws_iot_default_authorizer_clear() {

    p6_run_write_cmd aws iot clear-default-authorizer "$@"
}