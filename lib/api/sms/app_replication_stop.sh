######################################################################
#<
#
# Function:
#	p6_aws_sms_app_replication_stop()
#
#>
######################################################################
p6_aws_sms_app_replication_stop() {

    p6_run_write_cmd aws sms stop-app-replication "$@"
}