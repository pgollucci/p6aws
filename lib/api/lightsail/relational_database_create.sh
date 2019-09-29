######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_relational_database_create(relational_database_name, relational_database_blueprint_id, relational_database_bundle_id, master_database_name, master_username)
#
# Arg(s):
#    relational_database_name - 
#    relational_database_blueprint_id - 
#    relational_database_bundle_id - 
#    master_database_name - 
#    master_username - 
#
#
#>
######################################################################
p6_aws_lightsail_relational_database_create() {
    local relational_database_name="$1"
    local relational_database_blueprint_id="$2"
    local relational_database_bundle_id="$3"
    local master_database_name="$4"
    local master_username="$5"
    shift 5

    p6_run_write_cmd aws lightsail create-relational-database --relational-database-name $relational_database_name --relational-database-blueprint-id $relational_database_blueprint_id --relational-database-bundle-id $relational_database_bundle_id --master-database-name $master_database_name --master-username $master_username "$@"
}