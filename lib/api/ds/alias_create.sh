######################################################################
#<
#
# Function:
#	p6_aws_ds_alias_create(directory_id, alias)
#
#  Args:
#	directory_id - 
#	alias - 
#
#>
######################################################################
p6_aws_ds_alias_create() {
    local directory_id="$1"
    local alias="$2"
    shift 2

    p6_run_write_cmd aws ds create-alias --directory-id $directory_id --alias $alias "$@"
}