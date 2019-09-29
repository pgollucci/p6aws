######################################################################
#<
#
# Function:
#      = p6_aws_ram_resource_policies_get(resource_arns)
#
# Arg(s):
#    resource_arns - 
#
#
#>
######################################################################
p6_aws_ram_resource_policies_get() {
    local resource_arns="$1"
    shift 1

    p6_run_read_cmd aws ram get-resource-policies --resource-arns $resource_arns "$@"
}