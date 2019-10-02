######################################################################
#<
#
# Function:
#	p6_aws_ssm_documents_list()
#
#>
######################################################################
p6_aws_ssm_documents_list() {

    p6_run_read_cmd aws ssm list-documents "$@"
}