######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_type_describe(thing_type_name)
#
# Arg(s):
#    thing_type_name - 
#
#
#>
######################################################################
p6_aws_iot_thing_type_describe() {
    local thing_type_name="$1"
    shift 1

    p6_run_read_cmd aws iot describe-thing-type --thing-type-name $thing_type_name "$@"
}