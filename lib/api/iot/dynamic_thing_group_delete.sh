######################################################################
#<
#
# Function:
#      = p6_aws_iot_dynamic_thing_group_delete(thing_group_name)
#
# Arg(s):
#    thing_group_name - 
#
#
#>
######################################################################
p6_aws_iot_dynamic_thing_group_delete() {
    local thing_group_name="$1"
    shift 1

    p6_run_write_cmd aws iot delete-dynamic-thing-group --thing-group-name $thing_group_name "$@"
}