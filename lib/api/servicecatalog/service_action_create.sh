######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_service_action_create(name, definition_type, definition)
#
# Arg(s):
#    name - 
#    definition_type - 
#    definition - 
#
#
#>
######################################################################
p6_aws_servicecatalog_service_action_create() {
    local name="$1"
    local definition_type="$2"
    local definition="$3"
    shift 3

    p6_run_write_cmd aws servicecatalog create-service-action --name $name --definition-type $definition_type --definition $definition "$@"
}