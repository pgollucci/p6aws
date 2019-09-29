######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_parameter_group_copy(source_db_parameter_group_identifier, target_db_parameter_group_identifier, target_db_parameter_group_description)
#
# Arg(s):
#    source_db_parameter_group_identifier - 
#    target_db_parameter_group_identifier - 
#    target_db_parameter_group_description - 
#
#
#>
######################################################################
p6_aws_rds_db_parameter_group_copy() {
    local source_db_parameter_group_identifier="$1"
    local target_db_parameter_group_identifier="$2"
    local target_db_parameter_group_description="$3"
    shift 3

    p6_run_write_cmd aws rds copy-db-parameter-group --source-db-parameter-group-identifier $source_db_parameter_group_identifier --target-db-parameter-group-identifier $target_db_parameter_group_identifier --target-db-parameter-group-description $target_db_parameter_group_description "$@"
}