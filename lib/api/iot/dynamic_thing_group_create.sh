######################################################################
#<
#
# Function:
#      = p6_aws_iot_dynamic_thing_group_create(thing_group_name, query_string)
#
# Arg(s):
#    thing_group_name - 
#    query_string - 
#
#
#>
######################################################################
p6_aws_iot_dynamic_thing_group_create() {
    local thing_group_name="$1"
    local query_string="$2"
    shift 2

    p6_run_write_cmd aws iot create-dynamic-thing-group --thing-group-name $thing_group_name --query-string $query_string "$@"
}