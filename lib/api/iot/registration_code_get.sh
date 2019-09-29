######################################################################
#<
#
# Function:
#      = p6_aws_iot_registration_code_get()
#
#
#
#>
######################################################################
p6_aws_iot_registration_code_get() {

    p6_run_read_cmd aws iot get-registration-code "$@"
}