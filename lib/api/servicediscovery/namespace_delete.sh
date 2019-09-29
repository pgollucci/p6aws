######################################################################
#<
#
# Function:
#      = p6_aws_servicediscovery_namespace_delete(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_servicediscovery_namespace_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicediscovery delete-namespace --id $id "$@"
}