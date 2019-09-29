######################################################################
#<
#
# Function:
#      = p6_aws_support_services_describe()
#
#
#
#>
######################################################################
p6_aws_support_services_describe() {

    p6_run_read_cmd aws support describe-services "$@"
}