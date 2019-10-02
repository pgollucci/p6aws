######################################################################
#<
#
# Function:
#	p6_aws_iot_registration_code_delete()
#
#>
######################################################################
p6_aws_iot_registration_code_delete() {

    p6_run_write_cmd aws iot delete-registration-code "$@"
}