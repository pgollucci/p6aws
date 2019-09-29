######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_disassociate_service_action_from_provisioning_artifact_batch(service_action_associations)
#
# Arg(s):
#    service_action_associations - 
#
#
#>
######################################################################
p6_aws_servicecatalog_disassociate_service_action_from_provisioning_artifact_batch() {
    local service_action_associations="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog batch-disassociate-service-action-from-provisioning-artifact --service-action-associations $service_action_associations "$@"
}