######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_entity_to_thing_associate(thing_name, entity_id)
#
# Arg(s):
#    thing_name - 
#    entity_id - 
#
#
#>
######################################################################
p6_aws_iotthingsgraph_entity_to_thing_associate() {
    local thing_name="$1"
    local entity_id="$2"
    shift 2

    p6_run_write_cmd aws iotthingsgraph associate-entity-to-thing --thing-name $thing_name --entity-id $entity_id "$@"
}