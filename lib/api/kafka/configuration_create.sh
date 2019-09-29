######################################################################
#<
#
# Function:
#      = p6_aws_kafka_configuration_create(kafka_versions, name, server_properties)
#
# Arg(s):
#    kafka_versions - 
#    name - 
#    server_properties - 
#
#
#>
######################################################################
p6_aws_kafka_configuration_create() {
    local kafka_versions="$1"
    local name="$2"
    local server_properties="$3"
    shift 3

    p6_run_write_cmd aws kafka create-configuration --kafka-versions $kafka_versions --name $name --server-properties $server_properties "$@"
}