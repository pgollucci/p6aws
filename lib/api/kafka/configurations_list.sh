######################################################################
#<
#
# Function:
#	p6_aws_kafka_configurations_list()
#
#>
######################################################################
p6_aws_kafka_configurations_list() {

    p6_run_read_cmd aws kafka list-configurations "$@"
}