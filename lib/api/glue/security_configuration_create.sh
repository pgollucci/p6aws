######################################################################
#<
#
# Function:
#	p6_aws_glue_security_configuration_create(name, encryption_configuration)
#
#  Args:
#	name - 
#	encryption_configuration - 
#
#>
######################################################################
p6_aws_glue_security_configuration_create() {
    local name="$1"
    local encryption_configuration="$2"
    shift 2

    p6_run_write_cmd aws glue create-security-configuration --name $name --encryption-configuration $encryption_configuration "$@"
}