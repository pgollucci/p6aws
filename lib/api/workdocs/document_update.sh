######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_document_update(document_id)
#
# Arg(s):
#    document_id - 
#
#
#>
######################################################################
p6_aws_workdocs_document_update() {
    local document_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs update-document --document-id $document_id "$@"
}