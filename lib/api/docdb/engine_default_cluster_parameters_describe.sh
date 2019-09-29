######################################################################
#<
#
# Function:
#      = p6_aws_docdb_engine_default_cluster_parameters_describe(db_parameter_group_family)
#
# Arg(s):
#    db_parameter_group_family - 
#
#
#>
######################################################################
p6_aws_docdb_engine_default_cluster_parameters_describe() {
    local db_parameter_group_family="$1"
    shift 1

    p6_run_read_cmd aws docdb describe-engine-default-cluster-parameters --db-parameter-group-family $db_parameter_group_family "$@"
}