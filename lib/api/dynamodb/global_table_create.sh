######################################################################
#<
#
# Function:
#      = p6_aws_dynamodb_global_table_create(global_table_name, replication_group)
#
# Arg(s):
#    global_table_name - 
#    replication_group - 
#
#
#>
######################################################################
p6_aws_dynamodb_global_table_create() {
    local global_table_name="$1"
    local replication_group="$2"
    shift 2

    p6_run_write_cmd aws dynamodb create-global-table --global-table-name $global_table_name --replication-group $replication_group "$@"
}