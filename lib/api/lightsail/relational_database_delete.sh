######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_relational_database_delete(relational_database_name)
#
# Arg(s):
#    relational_database_name - 
#
#
#>
######################################################################
p6_aws_lightsail_relational_database_delete() {
    local relational_database_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-relational-database --relational-database-name $relational_database_name "$@"
}