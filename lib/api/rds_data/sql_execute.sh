######################################################################
#<
#
# Function:
#      = p6_aws_rds_data_sql_execute(aws_secret_store_arn, db_cluster_or_instance_arn, sql_statements)
#
# Arg(s):
#    aws_secret_store_arn - 
#    db_cluster_or_instance_arn - 
#    sql_statements - 
#
#
#>
######################################################################
p6_aws_rds_data_sql_execute() {
    local aws_secret_store_arn="$1"
    local db_cluster_or_instance_arn="$2"
    local sql_statements="$3"
    shift 3

    p6_run_write_cmd aws rds-data execute-sql --aws-secret-store-arn $aws_secret_store_arn --db-cluster-or-instance-arn $db_cluster_or_instance_arn --sql-statements $sql_statements "$@"
}