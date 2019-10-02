######################################################################
#<
#
# Function:
#	p6_aws_lightsail_blueprints_get()
#
#>
######################################################################
p6_aws_lightsail_blueprints_get() {

    p6_run_read_cmd aws lightsail get-blueprints "$@"
}