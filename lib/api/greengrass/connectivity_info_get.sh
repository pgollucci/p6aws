######################################################################
#<
#
# Function:
#	p6_aws_greengrass_connectivity_info_get(thing_name)
#
#  Args:
#	thing_name - 
#
#>
######################################################################
p6_aws_greengrass_connectivity_info_get() {
    local thing_name="$1"
    shift 1

    p6_run_read_cmd aws greengrass get-connectivity-info --thing-name $thing_name "$@"
}