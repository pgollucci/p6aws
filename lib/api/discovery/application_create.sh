######################################################################
#<
#
# Function:
#      = p6_aws_discovery_application_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_discovery_application_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws discovery create-application --name $name "$@"
}