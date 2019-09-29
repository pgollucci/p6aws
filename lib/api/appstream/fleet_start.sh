######################################################################
#<
#
# Function:
#      = p6_aws_appstream_fleet_start(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_appstream_fleet_start() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream start-fleet --name $name "$@"
}