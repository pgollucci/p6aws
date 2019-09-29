######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_principals_list(thing_name)
#
# Arg(s):
#    thing_name - 
#
#
#>
######################################################################
p6_aws_iot_thing_principals_list() {
    local thing_name="$1"
    shift 1

    p6_run_read_cmd aws iot list-thing-principals --thing-name $thing_name "$@"
}