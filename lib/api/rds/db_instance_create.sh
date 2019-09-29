######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_instance_create(db_instance_identifier, db_instance_class, engine)
#
# Arg(s):
#    db_instance_identifier - 
#    db_instance_class - 
#    engine - 
#
#
#>
######################################################################
p6_aws_rds_db_instance_create() {
    local db_instance_identifier="$1"
    local db_instance_class="$2"
    local engine="$3"
    shift 3

    p6_run_write_cmd aws rds create-db-instance --db-instance-identifier $db_instance_identifier --db-instance-class $db_instance_class --engine $engine "$@"
}