######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_delete(thing_name)
#
# Arg(s):
#    thing_name - 
#
#
#>
######################################################################
p6_aws_iot_thing_delete() {
    local thing_name="$1"
    shift 1

    p6_run_write_cmd aws iot delete-thing --thing-name $thing_name "$@"
}