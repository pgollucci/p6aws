######################################################################
#<
#
# Function:
#      = p6_aws_appstream_fleet_stop(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_appstream_fleet_stop() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream stop-fleet --name $name "$@"
}