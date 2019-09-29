######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_create(thing_name)
#
# Arg(s):
#    thing_name - 
#
#
#>
######################################################################
p6_aws_iot_thing_create() {
    local thing_name="$1"
    shift 1

    p6_run_write_cmd aws iot create-thing --thing-name $thing_name "$@"
}