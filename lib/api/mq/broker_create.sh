######################################################################
#<
#
# Function:
#      = p6_aws_mq_broker_create()
#
#
#
#>
######################################################################
p6_aws_mq_broker_create() {

    p6_run_write_cmd aws mq create-broker "$@"
}