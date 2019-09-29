######################################################################
#<
#
# Function:
#      = p6_aws_appstream_stack_update(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_appstream_stack_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream update-stack --name $name "$@"
}