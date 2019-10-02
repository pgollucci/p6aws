######################################################################
#<
#
# Function:
#	p6_aws_appstream_fleet_update()
#
#>
######################################################################
p6_aws_appstream_fleet_update() {

    p6_run_write_cmd aws appstream update-fleet "$@"
}