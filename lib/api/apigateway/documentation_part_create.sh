######################################################################
#<
#
# Function:
#	p6_aws_apigateway_documentation_part_create(rest_api_id, location, properties)
#
#  Args:
#	rest_api_id - 
#	location - 
#	properties - 
#
#>
######################################################################
p6_aws_apigateway_documentation_part_create() {
    local rest_api_id="$1"
    local location="$2"
    local properties="$3"
    shift 3

    p6_run_write_cmd aws apigateway create-documentation-part --rest-api-id $rest_api_id --location $location --properties $properties "$@"
}