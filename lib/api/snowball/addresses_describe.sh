######################################################################
#<
#
# Function:
#      = p6_aws_snowball_addresses_describe()
#
#
#
#>
######################################################################
p6_aws_snowball_addresses_describe() {

    p6_run_read_cmd aws snowball describe-addresses "$@"
}