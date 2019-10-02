######################################################################
#<
#
# Function:
#	p6_aws_workdocs_document_versions_describe(document_id)
#
#  Args:
#	document_id - 
#
#>
######################################################################
p6_aws_workdocs_document_versions_describe() {
    local document_id="$1"
    shift 1

    p6_run_read_cmd aws workdocs describe-document-versions --document-id $document_id "$@"
}