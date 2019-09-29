######################################################################
#<
#
# Function:
#      = p6_aws_lambda_layer_version_permission_add(layer_name, version_number, statement_id, action, principal)
#
# Arg(s):
#    layer_name - 
#    version_number - 
#    statement_id - 
#    action - 
#    principal - 
#
#
#>
######################################################################
p6_aws_lambda_layer_version_permission_add() {
    local layer_name="$1"
    local version_number="$2"
    local statement_id="$3"
    local action="$4"
    local principal="$5"
    shift 5

    p6_run_write_cmd aws lambda add-layer-version-permission --layer-name $layer_name --version-number $version_number --statement-id $statement_id --action $action --principal $principal "$@"
}