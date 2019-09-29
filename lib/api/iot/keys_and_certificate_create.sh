######################################################################
#<
#
# Function:
#      = p6_aws_iot_keys_and_certificate_create()
#
#
#
#>
######################################################################
p6_aws_iot_keys_and_certificate_create() {

    p6_run_write_cmd aws iot create-keys-and-certificate "$@"
}