######################################################################
#<
#
# Function:
#	p6_aws_sms_app_replication_start()
#
#>
######################################################################
p6_aws_sms_app_replication_start() {

    p6_run_write_cmd aws sms start-app-replication "$@"
}