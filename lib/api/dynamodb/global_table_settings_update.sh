######################################################################
#<
#
# Function:
#      = p6_aws_dynamodb_global_table_settings_update(global_table_name)
#
# Arg(s):
#    global_table_name - 
#
#
#>
######################################################################
p6_aws_dynamodb_global_table_settings_update() {
    local global_table_name="$1"
    shift 1

    p6_run_write_cmd aws dynamodb update-global-table-settings --global-table-name $global_table_name "$@"
}