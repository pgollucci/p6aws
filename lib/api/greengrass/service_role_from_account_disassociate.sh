######################################################################
#<
#
# Function:
#	p6_aws_greengrass_service_role_from_account_disassociate()
#
#>
######################################################################
p6_aws_greengrass_service_role_from_account_disassociate() {

    p6_run_write_cmd aws greengrass disassociate-service-role-from-account "$@"
}