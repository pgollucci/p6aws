######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_snapshot_attribute_modify(db_snapshot_identifier, attribute_name)
#
# Arg(s):
#    db_snapshot_identifier - 
#    attribute_name - 
#
#
#>
######################################################################
p6_aws_rds_db_snapshot_attribute_modify() {
    local db_snapshot_identifier="$1"
    local attribute_name="$2"
    shift 2

    p6_run_write_cmd aws rds modify-db-snapshot-attribute --db-snapshot-identifier $db_snapshot_identifier --attribute-name $attribute_name "$@"
}