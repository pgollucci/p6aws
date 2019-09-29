######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_groups_for_thing_list(thing_name)
#
# Arg(s):
#    thing_name - 
#
#
#>
######################################################################
p6_aws_iot_thing_groups_for_thing_list() {
    local thing_name="$1"
    shift 1

    p6_run_read_cmd aws iot list-thing-groups-for-thing --thing-name $thing_name "$@"
}