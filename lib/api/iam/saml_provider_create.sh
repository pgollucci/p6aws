######################################################################
#<
#
# Function:
#      = p6_aws_iam_saml_provider_create(saml_metadata_document, name)
#
# Arg(s):
#    saml_metadata_document - 
#    name - 
#
#
#>
######################################################################
p6_aws_iam_saml_provider_create() {
    local saml_metadata_document="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws iam create-saml-provider --saml-metadata-document $saml_metadata_document --name $name "$@"
}