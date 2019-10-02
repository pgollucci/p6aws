######################################################################
#<
#
# Function:
#	p6_aws_iot_event_configurations_describe()
#
#>
######################################################################
p6_aws_iot_event_configurations_describe() {

    p6_run_read_cmd aws iot describe-event-configurations "$@"
}