######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_service_role_for_account_get()
#
#
#
#>
######################################################################
p6_aws_greengrass_service_role_for_account_get() {

    p6_run_read_cmd aws greengrass get-service-role-for-account "$@"
}