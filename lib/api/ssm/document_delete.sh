######################################################################
#<
#
# Function:
#	p6_aws_ssm_document_delete(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_ssm_document_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws ssm delete-document --name $name "$@"
}