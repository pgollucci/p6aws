######################################################################
#<
#
# Function:
#	p6_aws_opsworks_cm_backups_describe()
#
#>
######################################################################
p6_aws_opsworks_cm_backups_describe() {

    p6_run_read_cmd aws opsworks-cm describe-backups "$@"
}