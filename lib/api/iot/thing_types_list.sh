######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_types_list()
#
#
#
#>
######################################################################
p6_aws_iot_thing_types_list() {

    p6_run_read_cmd aws iot list-thing-types "$@"
}