######################################################################
#<
#
# Function:
#	p6_aws_iotthingsgraph_entity_from_thing_dissociate(thing_name, entity_type)
#
#  Args:
#	thing_name - 
#	entity_type - 
#
#>
######################################################################
p6_aws_iotthingsgraph_entity_from_thing_dissociate() {
    local thing_name="$1"
    local entity_type="$2"
    shift 2

    p6_run_write_cmd aws iotthingsgraph dissociate-entity-from-thing --thing-name $thing_name --entity-type $entity_type "$@"
}