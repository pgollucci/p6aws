######################################################################
#<
#
# Function:
#	p6_aws_iotthingsgraph_entities_search(entity_types)
#
#  Args:
#	entity_types - 
#
#>
######################################################################
p6_aws_iotthingsgraph_entities_search() {
    local entity_types="$1"
    shift 1

    p6_run_write_cmd aws iotthingsgraph search-entities --entity-types $entity_types "$@"
}