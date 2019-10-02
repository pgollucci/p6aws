######################################################################
#<
#
# Function:
#	p6_aws_ssm_document_get(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_ssm_document_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws ssm get-document --name $name "$@"
}