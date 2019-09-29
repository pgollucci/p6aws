######################################################################
#<
#
# Function:
#      = p6_aws_lambda_layer_version_permission_remove(layer_name, version_number, statement_id)
#
# Arg(s):
#    layer_name - 
#    version_number - 
#    statement_id - 
#
#
#>
######################################################################
p6_aws_lambda_layer_version_permission_remove() {
    local layer_name="$1"
    local version_number="$2"
    local statement_id="$3"
    shift 3

    p6_run_write_cmd aws lambda remove-layer-version-permission --layer-name $layer_name --version-number $version_number --statement-id $statement_id "$@"
}