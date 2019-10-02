######################################################################
#<
#
# Function:
#	p6_aws_emr_security_configuration_describe(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_emr_security_configuration_describe() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws emr describe-security-configuration --name $name "$@"
}