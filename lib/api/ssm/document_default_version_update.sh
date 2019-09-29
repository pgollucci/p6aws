######################################################################
#<
#
# Function:
#      = p6_aws_ssm_document_default_version_update(name, document_version)
#
# Arg(s):
#    name - 
#    document_version - 
#
#
#>
######################################################################
p6_aws_ssm_document_default_version_update() {
    local name="$1"
    local document_version="$2"
    shift 2

    p6_run_write_cmd aws ssm update-document-default-version --name $name --document-version $document_version "$@"
}