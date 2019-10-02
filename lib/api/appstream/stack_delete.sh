######################################################################
#<
#
# Function:
#	p6_aws_appstream_stack_delete(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_appstream_stack_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream delete-stack --name $name "$@"
}