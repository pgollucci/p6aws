######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_flow_template_get(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_iotthingsgraph_flow_template_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws iotthingsgraph get-flow-template --id $id "$@"
}