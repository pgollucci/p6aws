p6_aws_kms_grant_retire() {

    p6_run_write_cmd aws kms retire-grant "$@"
}
