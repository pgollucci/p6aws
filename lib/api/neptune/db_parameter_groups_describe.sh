######################################################################
#<
#
# Function:
#      = p6_aws_neptune_db_parameter_groups_describe()
#
#
#
#>
######################################################################
p6_aws_neptune_db_parameter_groups_describe() {

    p6_run_read_cmd aws neptune describe-db-parameter-groups "$@"
}