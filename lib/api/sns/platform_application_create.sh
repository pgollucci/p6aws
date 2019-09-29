######################################################################
#<
#
# Function:
#      = p6_aws_sns_platform_application_create(name, platform, attributes)
#
# Arg(s):
#    name - 
#    platform - 
#    attributes - 
#
#
#>
######################################################################
p6_aws_sns_platform_application_create() {
    local name="$1"
    local platform="$2"
    local attributes="$3"
    shift 3

    p6_run_write_cmd aws sns create-platform-application --name $name --platform $platform --attributes $attributes "$@"
}