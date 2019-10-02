######################################################################
#<
#
# Function:
#	p6_aws_rds_role_from_db_instance_remove(db_instance_identifier, role_arn, feature_name)
#
#  Args:
#	db_instance_identifier - 
#	role_arn - 
#	feature_name - 
#
#>
######################################################################
p6_aws_rds_role_from_db_instance_remove() {
    local db_instance_identifier="$1"
    local role_arn="$2"
    local feature_name="$3"
    shift 3

    p6_run_write_cmd aws rds remove-role-from-db-instance --db-instance-identifier $db_instance_identifier --role-arn $role_arn --feature-name $feature_name "$@"
}