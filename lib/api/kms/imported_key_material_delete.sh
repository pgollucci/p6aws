######################################################################
#<
#
# Function:
#	p6_aws_kms_imported_key_material_delete(key_id)
#
#  Args:
#	key_id - 
#
#>
######################################################################
p6_aws_kms_imported_key_material_delete() {
    local key_id="$1"
    shift 1

    p6_run_write_cmd aws kms delete-imported-key-material --key-id $key_id "$@"
}