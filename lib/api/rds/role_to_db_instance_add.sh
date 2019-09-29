######################################################################
#<
#
# Function:
#      = p6_aws_rds_role_to_db_instance_add(db_instance_identifier, role_arn, feature_name)
#
# Arg(s):
#    db_instance_identifier - 
#    role_arn - 
#    feature_name - 
#
#
#>
######################################################################
p6_aws_rds_role_to_db_instance_add() {
    local db_instance_identifier="$1"
    local role_arn="$2"
    local feature_name="$3"
    shift 3

    p6_run_write_cmd aws rds add-role-to-db-instance --db-instance-identifier $db_instance_identifier --role-arn $role_arn --feature-name $feature_name "$@"
}