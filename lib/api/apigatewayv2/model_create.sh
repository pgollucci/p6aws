######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_model_create(api_id, name, schema)
#
#  Args:
#	api_id - 
#	name - 
#	schema - 
#
#>
######################################################################
p6_aws_apigatewayv2_model_create() {
    local api_id="$1"
    local name="$2"
    local schema="$3"
    shift 3

    p6_run_write_cmd aws apigatewayv2 create-model --api-id $api_id --name $name --schema $schema "$@"
}