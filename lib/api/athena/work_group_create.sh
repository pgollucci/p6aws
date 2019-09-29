######################################################################
#<
#
# Function:
#      = p6_aws_athena_work_group_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_athena_work_group_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws athena create-work-group --name $name "$@"
}