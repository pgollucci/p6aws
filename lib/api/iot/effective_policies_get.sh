######################################################################
#<
#
# Function:
#	p6_aws_iot_effective_policies_get()
#
#>
######################################################################
p6_aws_iot_effective_policies_get() {

    p6_run_read_cmd aws iot get-effective-policies "$@"
}