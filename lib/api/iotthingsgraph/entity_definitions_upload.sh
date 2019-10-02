######################################################################
#<
#
# Function:
#	p6_aws_iotthingsgraph_entity_definitions_upload()
#
#>
######################################################################
p6_aws_iotthingsgraph_entity_definitions_upload() {

    p6_run_write_cmd aws iotthingsgraph upload-entity-definitions "$@"
}