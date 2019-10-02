######################################################################
#<
#
# Function:
#	p6_aws_iot_security_profiles_list()
#
#>
######################################################################
p6_aws_iot_security_profiles_list() {

    p6_run_read_cmd aws iot list-security-profiles "$@"
}