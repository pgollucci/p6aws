p6_aws_cloudsearchdomain_documents_upload() {
    local documents="$1"
    local content_type="$2"
    shift 2

    p6_run_write_cmd aws cloudsearchdomain upload-documents --documents $documents --content-type $content_type "$@"
}
