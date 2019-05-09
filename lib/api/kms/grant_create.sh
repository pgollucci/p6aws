p6_aws_kms_grant_create() {
    local key_id="$1"
    local grantee_principal="$2"
    local operations="$3"
    shift 3

    p6_run_write_cmd aws kms create-grant --key-id $key_id --grantee-principal $grantee_principal --operations $operations "$@"
}
