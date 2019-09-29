######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_document_version_upload_initiate(parent_folder_id)
#
# Arg(s):
#    parent_folder_id - 
#
#
#>
######################################################################
p6_aws_workdocs_document_version_upload_initiate() {
    local parent_folder_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs initiate-document-version-upload --parent-folder-id $parent_folder_id "$@"
}