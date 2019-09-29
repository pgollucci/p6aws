######################################################################
#<
#
# Function:
#      = p6_aws_mq_broker_instance_options_describe()
#
#
#
#>
######################################################################
p6_aws_mq_broker_instance_options_describe() {

    p6_run_read_cmd aws mq describe-broker-instance-options "$@"
}