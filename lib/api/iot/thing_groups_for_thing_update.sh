######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_groups_for_thing_update()
#
#
#
#>
######################################################################
p6_aws_iot_thing_groups_for_thing_update() {

    p6_run_write_cmd aws iot update-thing-groups-for-thing "$@"
}