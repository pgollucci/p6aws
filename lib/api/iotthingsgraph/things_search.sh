######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_things_search(entity_id)
#
# Arg(s):
#    entity_id - 
#
#
#>
######################################################################
p6_aws_iotthingsgraph_things_search() {
    local entity_id="$1"
    shift 1

    p6_run_write_cmd aws iotthingsgraph search-things --entity-id $entity_id "$@"
}