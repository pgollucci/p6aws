######################################################################
#<
#
# Function:
#      = p6_aws_ssm_parameter_put(name, value, type)
#
# Arg(s):
#    name - 
#    value - 
#    type - 
#
#
#>
######################################################################
p6_aws_ssm_parameter_put() {
    local name="$1"
    local value="$2"
    local type="$3"
    shift 3

    p6_run_write_cmd aws ssm put-parameter --name $name --value $value --type $type "$@"
}