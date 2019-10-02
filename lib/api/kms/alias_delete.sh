######################################################################
#<
#
# Function:
#	p6_aws_kms_alias_delete(alias_name)
#
#  Args:
#	alias_name - 
#
#>
######################################################################
p6_aws_kms_alias_delete() {
    local alias_name="$1"
    shift 1

    p6_run_write_cmd aws kms delete-alias --alias-name $alias_name "$@"
}