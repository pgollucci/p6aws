######################################################################
#<
#
# Function:
#      = p6_aws_glue_security_configuration_get(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_glue_security_configuration_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws glue get-security-configuration --name $name "$@"
}