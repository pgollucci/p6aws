######################################################################
#<
#
# Function:
#      = p6_aws_meteringmarketplace_customer_resolve(registration_token)
#
# Arg(s):
#    registration_token - 
#
#
#>
######################################################################
p6_aws_meteringmarketplace_customer_resolve() {
    local registration_token="$1"
    shift 1

    p6_run_write_cmd aws meteringmarketplace resolve-customer --registration-token $registration_token "$@"
}