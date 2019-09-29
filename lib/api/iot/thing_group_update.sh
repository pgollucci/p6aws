######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_group_update(thing_group_name, thing_group_properties)
#
# Arg(s):
#    thing_group_name - 
#    thing_group_properties - 
#
#
#>
######################################################################
p6_aws_iot_thing_group_update() {
    local thing_group_name="$1"
    local thing_group_properties="$2"
    shift 2

    p6_run_write_cmd aws iot update-thing-group --thing-group-name $thing_group_name --thing-group-properties $thing_group_properties "$@"
}