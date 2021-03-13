# shellcheck shell=sh

######################################################################
#<
#
# Function: p6_aws_svc_ssm_documents_list()
#
#>
######################################################################
p6_aws_svc_ssm_documents_list() {

    p6_aws_cli_cmd ssm list-documents \
        --output text \
        --query "'DocumentIdentifiers[].[Owner, DocumentVersion, DocumentType, SchemaVersion, DocumentFormat, Name, TargetType]'" |
        sort -k 3,6
}

######################################################################
#<
#
# Function: p6_aws_svc_ssm_documents_list_aws()
#
#>
######################################################################
p6_aws_svc_ssm_documents_list_aws() {

    p6_aws_svc_ssm_documents_list | grep "Amazon"
}

######################################################################
#<
#
# Function: p6_aws_svc_ssm_documents_list_of()
#
#>
######################################################################
p6_aws_svc_ssm_documents_list_of() {

    p6_aws_svc_ssm_documents_list | grep "$1"
}