######################################################################
#<
#
# Function:
#	p6_aws_codecommit_repository_name_update(old_name, new_name)
#
#  Args:
#	old_name - 
#	new_name - 
#
#>
######################################################################
p6_aws_codecommit_repository_name_update() {
    local old_name="$1"
    local new_name="$2"
    shift 2

    p6_run_write_cmd aws codecommit update-repository-name --old-name $old_name --new-name $new_name "$@"
}