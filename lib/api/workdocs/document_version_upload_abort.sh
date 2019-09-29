######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_document_version_upload_abort(document_id, version_id)
#
# Arg(s):
#    document_id - 
#    version_id - 
#
#
#>
######################################################################
p6_aws_workdocs_document_version_upload_abort() {
    local document_id="$1"
    local version_id="$2"
    shift 2

    p6_run_write_cmd aws workdocs abort-document-version-upload --document-id $document_id --version-id $version_id "$@"
}