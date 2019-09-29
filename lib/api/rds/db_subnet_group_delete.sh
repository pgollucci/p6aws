######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_subnet_group_delete(db_subnet_group_name)
#
# Arg(s):
#    db_subnet_group_name - 
#
#
#>
######################################################################
p6_aws_rds_db_subnet_group_delete() {
    local db_subnet_group_name="$1"
    shift 1

    p6_run_write_cmd aws rds delete-db-subnet-group --db-subnet-group-name $db_subnet_group_name "$@"
}