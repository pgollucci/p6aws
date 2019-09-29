######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_instance_automated_backups_describe()
#
#
#
#>
######################################################################
p6_aws_rds_db_instance_automated_backups_describe() {

    p6_run_read_cmd aws rds describe-db-instance-automated-backups "$@"
}