######################################################################
#<
#
# Function:
#	p6_aws_sms_app_replication_configuration_get()
#
#>
######################################################################
p6_aws_sms_app_replication_configuration_get() {

    p6_run_read_cmd aws sms get-app-replication-configuration "$@"
}