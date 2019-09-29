######################################################################
#<
#
# Function:
#      = p6_aws_health_entity_aggregates_describe()
#
#
#
#>
######################################################################
p6_aws_health_entity_aggregates_describe() {

    p6_run_read_cmd aws health describe-entity-aggregates "$@"
}