# shellcheck shell=sh

p6_aws_ssm_svc_documents_list() {

    p6_aws_cmd ssm list-documents \
        --output text \
        --query "'DocumentIdentifiers[].[Owner, DocumentVersion, DocumentType, SchemaVersion, DocumentFormat, Name, TargetType]'" |
        sort -k 3,6
}

p6_aws_ssm_svc_documents_list_aws() {

    p6_aws_ssm_svc_documents_list | grep "Amazon"
}

p6_aws_ssm_svc_documents_list_of() {

    p6_aws_ssm_svc_documents_list | grep "$1"
}
