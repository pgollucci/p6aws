######################################################################
#<
#
# Function:
#	p6_aws_ds_schema_extension_cancel(directory_id, schema_extension_id)
#
#  Args:
#	directory_id - 
#	schema_extension_id - 
#
#>
######################################################################
p6_aws_ds_schema_extension_cancel() {
    local directory_id="$1"
    local schema_extension_id="$2"
    shift 2

    p6_run_write_cmd aws ds cancel-schema-extension --directory-id $directory_id --schema-extension-id $schema_extension_id "$@"
}