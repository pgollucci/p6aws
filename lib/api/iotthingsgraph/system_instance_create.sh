######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_system_instance_create(definition, target)
#
# Arg(s):
#    definition - 
#    target - 
#
#
#>
######################################################################
p6_aws_iotthingsgraph_system_instance_create() {
    local definition="$1"
    local target="$2"
    shift 2

    p6_run_write_cmd aws iotthingsgraph create-system-instance --definition $definition --target $target "$@"
}