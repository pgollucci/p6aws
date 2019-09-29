######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_cm_server_engine_attributes_update(server_name, attribute_name)
#
# Arg(s):
#    server_name - 
#    attribute_name - 
#
#
#>
######################################################################
p6_aws_opsworks_cm_server_engine_attributes_update() {
    local server_name="$1"
    local attribute_name="$2"
    shift 2

    p6_run_write_cmd aws opsworks-cm update-server-engine-attributes --server-name $server_name --attribute-name $attribute_name "$@"
}