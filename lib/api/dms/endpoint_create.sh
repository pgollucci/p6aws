######################################################################
#<
#
# Function:
#      = p6_aws_dms_endpoint_create(endpoint_identifier, endpoint_type, engine_name)
#
# Arg(s):
#    endpoint_identifier - 
#    endpoint_type - 
#    engine_name - 
#
#
#>
######################################################################
p6_aws_dms_endpoint_create() {
    local endpoint_identifier="$1"
    local endpoint_type="$2"
    local engine_name="$3"
    shift 3

    p6_run_write_cmd aws dms create-endpoint --endpoint-identifier $endpoint_identifier --endpoint-type $endpoint_type --engine-name $engine_name "$@"
}