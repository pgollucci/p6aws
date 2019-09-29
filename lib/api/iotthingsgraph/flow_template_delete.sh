######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_flow_template_delete(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_iotthingsgraph_flow_template_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws iotthingsgraph delete-flow-template --id $id "$@"
}