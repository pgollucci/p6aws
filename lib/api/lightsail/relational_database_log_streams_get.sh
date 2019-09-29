######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_relational_database_log_streams_get(relational_database_name)
#
# Arg(s):
#    relational_database_name - 
#
#
#>
######################################################################
p6_aws_lightsail_relational_database_log_streams_get() {
    local relational_database_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-relational-database-log-streams --relational-database-name $relational_database_name "$@"
}